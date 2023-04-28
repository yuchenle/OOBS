# C compiler
CC = clang++
#ICC = icc
CC_FLAGS = -g -fopenmp -O3
OFFLOAD_FLAGS = -fopenmp-targets=nvptx64
TDG_FLAGS = -fopenmp-taskgraph -cuda-tdg
all: bfs bfs_offload bfs_offload_tdg

bfs: bfs.cpp 
	$(CC) $(CC_FLAGS) bfs.cpp -o bfs 

bfs_offload: bfs.cpp
	$(CC) $(CC_FLAGS) $(OFFLOAD_FLAGS) -DOMP_OFFLOAD bfs.cpp -o bfs_offload

bfs_offload_tdg: bfs.cpp
	$(CC) $(CC_FLAGS) $(OFFLOAD_FLAGS) $(TDG_FLAGS) -DTDG -DOMP_OFFLOAD bfs.cpp -o bfs_offload_tdg

clean:
	rm -f bfs bfs_offload result.txt
