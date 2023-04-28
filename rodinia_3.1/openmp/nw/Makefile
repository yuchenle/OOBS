# C compiler
CC = clang++
#ICC = icc
CC_FLAGS = -g -O3 -fopenmp --gcc-toolchain=/apps/GCC/7.3.0
OFFLOAD_CC_FLAGS = -fopenmp-targets=nvptx64
#-offload-option,mic,compiler,"-no-opt-prefetch"
TDG_FLAGS = -fopenmp-taskgraph -cuda-tdg
all: needle needle_offload needle_offload_tdg

needle: 
	$(CC) $(CC_FLAGS) needle.cpp -o needle 

needle_offload:
	$(CC) $(CC_FLAGS) $(OFFLOAD_CC_FLAGS) -DOMP_OFFLOAD needle.cpp -o needle_offload

needle_offload_tdg:
	$(CC) $(CC_FLAGS) $(TDG_FLAGS) $(OFFLOAD_CC_FLAGS) -DOMP_OFFLOAD -DTDG needle.cpp -o needle_offload_tdg

clean:
	rm -f needle needle_offload
