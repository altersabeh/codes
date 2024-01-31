// Hello World in CUDA !

#include <stdio.h>

__global__ void hello() {
  printf("Hello World from CUDA !\n");
}

int main() {
  hello<<<1, 1>>>();
  cudaDeviceSynchronize();
  return 0;
}
