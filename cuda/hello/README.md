# `CUDA/Hello`

This is a **Hello World** program written in **CUDA**.

``` Cuda
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
```

## Prerequisite

To run and build this program you need to have the following:

<div align="center">

| Name | Commands | Required | Recommended | Optional | Notes |
|:----:|:--------:|:--------:|:-----------:|:--------:|:-----:|
| [**GNU Make**](https://www.gnu.org/software/make/) | **`make`** | &#9989; | &#9989; | &#10062; | **`apt install make`** |
| [**NVIDIA Cuda Compiler**](https://developer.nvidia.com/cuda-downloads) | **`nvcc`** | &#9989; | &#9989; | &#10062; | **`apt install nvidia-cuda-toolkit`**<br>or<br>**`apt instal cuda`** |
| [**GNU C/C++ Compiler**](https://gcc.gnu.org) | **`gcc`**<br>**`g++`** | &#9989; | &#9989; | &#10062; | **`apt install gcc`**<br>**`apt install g++`** |
| [**LLVM C/C++ Compiler**](https://releases.llvm.org/download.html) | **`clang`**<br>**`clang++`** | &#10062; | &#9989; | &#9989; | **`apt install clang`** |
| [**Intel C/C++ Compiler**](https://www.intel.com/content/www/us/en/developer/tools/oneapi/dpc-compiler.html) | **`icx`**<br>**`icpx`**<br>**`dpcpp`** | &#10062; | &#10062; | &#9989; | **`apt install intel-basekit`**<br>or<br>**`apt install intel-hpckit`** |

</div>

## Building

This program is designed to be built automatically using tools such as
**`make`**, or manually with **`nvcc`**, **`gcc`**, **`clang`**, or other **CUDA
Compilers**. You can initiate the build process either from the root directory
or the source directory.

### Root Directory

#### Using `make`

From the root directory:

```
make build-cuda-hello
```

### Source Directory _(optional)_

#### Using `make`

From the source directory, you can run:

```
make build
```

#### Using `cuda compilers and linkers`

To use **`nvcc`**, **`clang`**, **`gcc`**, or other **CUDA Compilers and Linkers** from the
source directory, run one of the following:

> [!CAUTION]
> This **will create build artifacts** in the source directory that you may
> **have to manually remove**.

> [!NOTE]
> The **sources** are located in the **src** directory.

```
cd src
nvcc -g -O2 hello.cu -o cuda-hello
```
```
cd src
clang -g -O2 --no-cuda-version-check --cuda-gpu-arch=sm_52 hello.cu -lcudart -o cuda-hello
```
```
cd src
nvcc -c -g -O2 hello.cu
gcc hello.o -lcudart -o cuda-hello
```
```
cd src
nvcc -c -g -O2 hello.cu
clang hello.o -lcudart -o cuda-hello
```
```
cd src
nvcc -c -g -O2 hello.cu
icx hello.o -lcudart -o cuda-hello
```

## Running

The execution of this program can be seamlessly handled using automated build
tools like **`make`**, or manually with **`nvcc`**, **`gcc`**, **`clang`**, or
other **CUDA Compilers and Linkers**. You can run the program from either the
root directory or the source directory.

### Root Directory

#### Using `make`

From the root directory, run one of the following:

```
make cuda-hello
```
```
make run-cuda-hello
```

### Source Directory _(optional)_

#### Using `make`

From the source directory, you can run:

```
make run
```

#### Using `cuda compilers and linkers`

If you used **`nvcc`**, **`gcc`**, **`clang`** or other **CUDA Compilers and
Linkers** for building the program:

```
cd src
./cuda-hello
```

## License

Licensed under [**MIT License**](LICENSE).
