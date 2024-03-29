# `C/Fibonacci`

This is a **Fibonacci** program written in **C**.

## Prerequisite

To run and build this program you need to have the following:

<div align="center">

| Name | Commands | Required | Recommended | Optional | Notes |
|:----:|:--------:|:--------:|:-----------:|:--------:|:-----:|
| [**GNU Make**](https://www.gnu.org/software/make/) | **`make`** | &#9989; | &#9989; | &#10062; | **`apt install make`** |
| [**GNU C Compiler**](https://gcc.gnu.org) | **`gcc`** | &#9989; | &#9989; | &#10062; | **`apt install gcc`** |
| [**LLVM C Compiler**](https://releases.llvm.org/download.html) | **`clang`** | &#10062; | &#9989; | &#9989; | **`apt install clang`** |
| [**Intel C Compiler**](https://www.intel.com/content/www/us/en/developer/tools/oneapi/dpc-compiler.html) | **`icx`**<br>**`dpcpp`** | &#10062; | &#10062; | &#9989; | **`apt install intel-basekit`**<br>or<br>**`apt install intel-hpckit`** |
| [**NVIDIA Cuda Compiler**](https://developer.nvidia.com/cuda-downloads) | **`nvcc`** | &#10062; | &#10062; | &#9989; | **`apt install nvidia-cuda-toolkit`**<br>or<br>**`apt install cuda`** |
| [**Bazel**](https://bazel.build/) | **`bazel`**<br>**`bazelisk`** | &#10062; | &#10062; | &#9989; | **`npm install -g @bazel/bazelisk`**<br>or<br>**`apt install bazel`** |
| [**Buck 2**](https://buck2.build/docs/getting_started/) | **`buck2`** | &#10062; | &#10062; | &#9989; | **`cargo install buck2`** |

</div>

## Building

This program is designed to be built automatically using tools such as
**`make`** and **`bazel`**, or manually with **`gcc`**, **`clang`**, **`icx`**,
or other **C Compilers**. You can initiate the build process either from the
root directory or the source directory.

### Root Directory

#### Using `make`

From the root directory:

```
make build-c-fibonacci
```

#### Using `bazel`

To use **`bazel`** from the root directory, run one of the following:

```
bazel build c-fibonacci
```
```
bazel build c/fibonacci:main
```

#### Using `buck2`

To use **`buck2`** from the root directory, run one of the following:

```
buck2 build :c-hello
```
```
buck2 build c/hello:main
```

### Source Directory _(optional)_

#### Using `make`

From the source directory, you can run:

```
make build
```

#### Using `c compilers`

To use **`gcc`**, **`clang`**, **`icx`**, or other **C Compilers** from the
source directory, run one of the following:

> [!CAUTION]
> This **will create build artifacts** in the source directory that you may
> **have to manually remove**.

> [!NOTE]
> The **sources** are located in the **src** directory.

```
cd src
gcc -g -O2 fibonacci.c -lgmp -o c-fibonacci
```
```
cd src
clang -g -O2 fibonacci.c -lgmp -o c-fibonacci
```
```
cd src
icx -g -O2 fibonacci.c -lgmp -o c-fibonacci
```
```
cd src
dpcpp -g -O2 fibonacci.c -lgmp -o c-fibonacci
```
```
cd src
nvcc -g -O2 fibonacci.c -lgmp -o c-fibonacci
```

#### Using `bazel`

To use **`bazel`** from the source directory, run one of the following:

```
bazel build main
```
```
bazel build c-fibonacci
```

#### Using `buck2`

To use **`buck2`** from the source directory, run one of the following:

```
buck2 build :main
```
```
buck2 build :c-fibonacci
```

## Running

The execution of this program can be seamlessly handled using automated build
tools like **`make`** and **`bazel`**, or manually with **`gcc`**, **`clang`**,
**`icx`** or other **C Compilers**. You can run the program from either the root
directory or the source directory.

### Root Directory

#### Using `make`

From the root directory, run one of the following:

```
make c-fibonacci
```
```
make run-c-fibonacci
```

#### Using `bazel`

To use **`bazel`** from the root directory, run one of the following:

```
bazel run c-fibonacci
```
```
bazel run c/fibonacci:main
```

#### Using `buck2`

To use **`buck2`** from the root directory, run one of the following:

```
buck2 run :c-fibonacci
```
```
buck2 run c/fibonacci:main
```

### Source Directory _(optional)_

#### Using `make`

From the source directory, you can run:

```
make run
```

#### Using `c compilers`

If you used **`gcc`**, **`clang`**, **`icx`** or other **C Compilers** for
building the program:

```
cd src
./c-fibonacci
```

#### Using `bazel`

To use **`bazel`** from the source directory, run one of the following:

```
bazel run main
```
```
bazel run c-fibonacci
```

#### Using `buck2`

To use **`buck2`** from the source directory, run one of the following:

```
buck2 run :main
```
```
buck2 run :c-fibonacci
```

## License

Licensed under [**MIT License**](LICENSE).
