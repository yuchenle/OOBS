//------------------------------------------------------------------------
//      ____                        _      _
//     / ___|____ _   _ ____   ____| |__  | |
//    | |   / ___| | | |  _  \/ ___|  _  \| |
//    | |___| |  | |_| | | | | |___| | | ||_|
//     \____|_|  \_____|_| |_|\____|_| |_|(_) Media benchmarks
//                           
//    2006, Intel Corporation, licensed under Apache 2.0 
//
//  file :   ParticleFilterOMP.h
//  author : Scott Ettinger - scott.m.ettinger@intel.com
//
//  description : OpenMP parallelized version of the particle filter
//          object derived from ParticleFilter.h
//    
//  modified : 
//--------------------------------------------------------------------------

#ifndef PARTICLEFILTERTP_H
#define PARTICLEFILTERTP_H

#if defined(HAVE_CONFIG_H)
# include "config.h"
#endif

#include "ParticleFilter.h"

template<class T> 
class ParticleFilterTP : public ParticleFilter<T> {

  using ParticleFilter<T>:: mModel;
  using ParticleFilter<T>:: mWeights;
  using ParticleFilter<T>:: mParticles;
  using ParticleFilter<T>:: mNewParticles;
  using ParticleFilter<T>:: mBestParticle;
  using ParticleFilter<T>:: mNParticles;
  using ParticleFilter<T>:: mMinParticles;
  using ParticleFilter<T>:: mBins;  
  using ParticleFilter<T>:: mRnd;
  typedef typename ParticleFilter<T>::fpType fpType;
  typedef typename ParticleFilter<T>::Vectorf Vectorf;

 protected:
  std::vector<int> mIndex; //list of particles to regenerate

  //calculate particle weights - threaded version 
  void CalcWeights(std::vector<Vectorf > &particles); //calculate particle weights based on model likelihood

  //New particle generation - threaded version 
  void GenerateNewParticles(int k);

};

//Calculate particle weights (mWeights) and find highest likelihood particle. 
//computes an optimal annealing factor and scales the likelihoods. 
template<class T>
void ParticleFilterTP<T>::CalcWeights(std::vector<Vectorf > &particles)
{
  std::vector<unsigned char> valid(particles.size());
  mBestParticle = 0;
  fpType total = 0, best = 0, minWeight = 1e30f, annealingFactor = 1;
  mWeights.resize(particles.size());

  int np = (int)particles.size();
#ifdef COLLECT_LOOP_SIZES
  fprintf(out_ls, "%d\n", np);
  fprintf(stdout, "%d\n", np);
#endif  
  pfor(0, np, 1, GRAIN_SIZE_WEIGHTS,
       [&] (int from, int to) {
         cilk_begin;
         for(int j = from; j < to; j++) {
           bool vflag;
           mWeights[j] = mModel->LogLikelihood(particles[j], vflag, j); //compute log-likelihood weights for each particle
           valid[j] = vflag ? 1 : 0;
         }
         cilk_void_return;
       });
  uint i = 0;
  while(i < particles.size())
    {  if(!valid[i]) //if not valid(model prior), remove the particle from the list
        {  particles[i] = particles[particles.size() - 1];
          mWeights[i] = mWeights[particles.size() - 1];
          valid[i] = valid[valid.size() - 1];
          particles.pop_back(); mWeights.pop_back(); valid.pop_back();
        }
      else
        minWeight = std::min(mWeights[i++], minWeight); //find minimum log-likelihood
    }
  if((int)particles.size() < mMinParticles) return; //bail out if not enough valid particles
  mWeights -= minWeight; //shift weights to zero for numerical stability
  if(mModel->StdDevs().size() > 1) 
    annealingFactor = BetaAnnealingFactor(mWeights, 0.5f); //calculate annealing factor if more than 1 step
  for(i = 0; i < mWeights.size(); i++)
    {  double wa = annealingFactor * mWeights[i];
      mWeights[i] = (float)exp(wa); //exponentiate log-likelihoods scaled by annealing factor
      total += mWeights[i]; //save sum of all weights
      if(i == 0 || mWeights[i] > best) //find highest likelihood particle
        {  best = mWeights[i];
          mBestParticle = i;
        }
    }
  mWeights *= fpType(1.0) / total; //normalize weights
}


//generate new particles distributed with std deviation given by the model annealing parameter - threaded
template<class T> 
void ParticleFilterTP<T>::GenerateNewParticles(int k) {
  int p = 0;
  mNewParticles.resize(mNParticles);
  mIndex.resize(mNParticles);
  for(int i = 0; i < (int)mBins.size(); i++)                    
    for(uint j = 0; j < mBins[i]; j++) //index particles to be regenerated
      mIndex[p++] = i;
#ifdef COLLECT_LOOP_SIZES
  fprintf(out_ls, "%d\n", mNParticles);
  fprintf(stdout, "%d\n", np);
#endif  
  pfor(0, mNParticles, 1, GRAIN_SIZE_NEWPARTICLES,
       [&] (int from, int to) {
         cilk_begin;
         for(int i = from; i < to; i++) { //distribute new particles randomly according to model stdDevs
           this->mNewParticles[i] = mParticles[mIndex[i]]; //add new particle for each entry in each bin distributed randomly about duplicated particle
           this->AddGaussianNoise(this->mNewParticles[i], this->mModel->StdDevs()[k], this->mRnd[i]);
         }
         cilk_void_return;
       });
}


/* ParticleFilterTP2: version 2 of the tpswitch-based task parallel model */

template<class T> 
class ParticleFilterTP2 : public ParticleFilter<T> {

  using ParticleFilter<T>:: mModel;
  using ParticleFilter<T>:: mWeights;
  using ParticleFilter<T>:: mParticles;
  using ParticleFilter<T>:: mNewParticles;
  using ParticleFilter<T>:: mBestParticle;
  using ParticleFilter<T>:: mNParticles;
  using ParticleFilter<T>:: mMinParticles;
  using ParticleFilter<T>:: mBins;  
  using ParticleFilter<T>:: mRnd;
  typedef typename ParticleFilter<T>::fpType fpType;
  typedef typename ParticleFilter<T>::Vectorf Vectorf;

 protected:
  std::vector<int> mIndex; //list of particles to regenerate

  //calculate particle weights - threaded version 
  void CalcWeights(std::vector<Vectorf > &particles); //calculate particle weights based on model likelihood

  //New particle generation - threaded version 
  void GenerateNewParticles(int k);

};

//Calculate particle weights (mWeights) and find highest likelihood particle. 
//computes an optimal annealing factor and scales the likelihoods. 
template<class T>
void ParticleFilterTP2<T>::CalcWeights(std::vector<Vectorf > &particles) {
  std::vector<unsigned char> valid(particles.size());
  mBestParticle = 0;
  fpType total = 0, best = 0, minWeight = 1e30f, annealingFactor = 1;
  mWeights.resize(particles.size());

  int np = (int)particles.size();
#ifdef COLLECT_LOOP_SIZES
  fprintf(out_ls, "%d\n", np);
  fprintf(stdout, "%d\n", np);
#endif  
  pfor(0, np, 1, GRAIN_SIZE_WEIGHTS,
       [&] (int from, int to) {
         cilk_begin;
         for(int j = from; j < to; j++) {
           bool vflag;
           mWeights[j] = mModel->LogLikelihood(particles[j], vflag, j); //compute log-likelihood weights for each particle
           valid[j] = vflag ? 1 : 0;
         }
         cilk_void_return;
       });
  uint i = 0;
  while(i < particles.size())
    {  if(!valid[i]) //if not valid(model prior), remove the particle from the list
        {  particles[i] = particles[particles.size() - 1];
          mWeights[i] = mWeights[particles.size() - 1];
          valid[i] = valid[valid.size() - 1];
          particles.pop_back(); mWeights.pop_back(); valid.pop_back();
        }
      else
        minWeight = std::min(mWeights[i++], minWeight); //find minimum log-likelihood
    }
  if((int)particles.size() < mMinParticles) return; //bail out if not enough valid particles
  mWeights -= minWeight; //shift weights to zero for numerical stability
  if(mModel->StdDevs().size() > 1) 
    annealingFactor = BetaAnnealingFactor(mWeights, 0.5f); //calculate annealing factor if more than 1 step
  for(i = 0; i < mWeights.size(); i++)
    {  double wa = annealingFactor * mWeights[i];
      mWeights[i] = (float)exp(wa); //exponentiate log-likelihoods scaled by annealing factor
      total += mWeights[i]; //save sum of all weights
      if(i == 0 || mWeights[i] > best) //find highest likelihood particle
        {  best = mWeights[i];
          mBestParticle = i;
        }
    }
  mWeights *= fpType(1.0) / total; //normalize weights
}

//generate new particles distributed with std deviation given by the model annealing parameter - threaded
template<class T> 
void ParticleFilterTP2<T>::GenerateNewParticles(int k) {
  int p = 0;
  mNewParticles.resize(mNParticles);
  mIndex.resize(mNParticles);
  for(int i = 0; i < (int)mBins.size(); i++)                    
    for(uint j = 0; j < mBins[i]; j++) //index particles to be regenerated
      mIndex[p++] = i;
#ifdef COLLECT_LOOP_SIZES
  fprintf(out_ls, "%d\n", mNParticles);
  fprintf(stdout, "%d\n", np);
#endif  
  pfor(0, mNParticles, 1, GRAIN_SIZE_NEWPARTICLES,
       [&] (int from, int to) {
         cilk_begin;
         for(int i = from; i < to; i++) { //distribute new particles randomly according to model stdDevs
           this->mNewParticles[i] = mParticles[mIndex[i]]; //add new particle for each entry in each bin distributed randomly about duplicated particle
           this->AddGaussianNoise(this->mNewParticles[i], this->mModel->StdDevs()[k], this->mRnd[i]);
         }
         cilk_void_return;
       });
}

#endif

