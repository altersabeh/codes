# `C++/Hello`

This is a **Hello World** program written in **C++**.

``` C++
// Hello World in C++ !

#include <iostream>

using namespace std;

int main() {
    cout << "Hello World from C++ !" << endl;
    return 0;
}
```

## Prerequisite

To run and build this program you need to have the following:

<div align="center">

| Name | Commands | Required | Recommended | Optional | Notes |
|:----:|:--------:|:--------:|:-----------:|:--------:|:-----:|
| [**GNU Make**](https://www.gnu.org/software/make/) | **`make`** | &#9989; | &#9989; | &#10062; | **`apt install make`** |
| [**GNU C++ Compiler**](https://gcc.gnu.org) | **`g++`** | &#9989; | &#9989; | &#10062; | **`apt install g++`** |
| [**LLVM C++ Compiler**](https://releases.llvm.org/download.html) | **`clang++`** | &#10062; | &#9989; | &#9989; | **`apt install clang`** |
| [**Intel C++ Compiler**](https://www.intel.com/content/www/us/en/developer/tools/oneapi/dpc-compiler.html) | **`icpx`**<br>**`dpcpp`** | &#10062; | &#10062; | &#9989; | **`apt install intel-basekit`**<br>or<br>**`apt install intel-hpckit`** |
| [**NVIDIA Cuda Compiler**](https://developer.nvidia.com/cuda-downloads) | **`nvcc`** | &#10062; | &#10062; | &#9989; | **`apt install nvidia-cuda-toolkit`**<br>or<br>**`apt instal cuda`** |
| [**Bazel**](https://bazel.build/) | **`bazel`**<br>**`bazelisk`** | &#10062; | &#10062; | &#9989; | **`npm install -g @bazel/bazelisk`**<br>or<br>**`apt install bazel`** |
| [**Buck 2**](https://buck2.build/docs/getting_started/) | **`buck2`** | &#10062; | &#10062; | &#9989; | **`cargo install buck2`** |

</div>

## Building

This program is designed to be built automatically using tools such as
**`make`** and **`bazel`**, or manually with **`g++`**, **`clang++`**,
**`icpx`**, or other **C++ Compilers**. You can initiate the build process
either from the root directory or the source directory.

### Root Directory

#### Using `make`

From the root directory:

```
make build-c++-hello
```

#### Using `bazel`

To use **`bazel`** from the root directory, run one of the following:

```
bazel build c++-hello
```
```
bazel build c++/hello:main
```

#### Using `buck2`

To use **`buck2`** from the root directory, run one of the following:

```
buck2 build :c++-hello
```
```
buck2 build c++/hello:main
```

### Source Directory _(optional)_

#### Using `make`

From the source directory, you can run:

```
make build
```

#### Using `c++ compilers`

To use **`g++`**, **`clang++`**, **`icpx`**, or other **C++ Compilers** from the
source directory, run one of the following:

> [!CAUTION]
> This **will create build artifacts** in the source directory that you may
> **have to manually remove**.

> [!NOTE]
> The **sources** are located in the **src** directory.

```
cd src
g++ -g -O2 hello.cpp -o c++-hello
```
```
cd src
clang++ -g -O2 hello.cpp -o c++-hello
```
```
cd src
icpx -g -O2 hello.cpp -o c++-hello
```
```
cd src
dpcpp -g -O2 hello.cpp -o c++-hello
```
```
cd src
nvcc -g -O2 hello.cpp -o c++-hello
```

#### Using `bazel`

To use **`bazel`** from the source directory, run one of the following:

```
bazel build main
```
```
bazel build c++-hello
```

#### Using `buck2`

To use **`buck2`** from the source directory, run one of the following:

```
buck2 build :main
```
```
buck2 build :c++-hello
```

## Running

The execution of this program can be seamlessly handled using automated build
tools like **`make`** and **`bazel`**, or manually with **`g++`**,
**`clang++`**, **`icpx`** or other **C++ Compilers**. You can run the program
from either the root directory or the source directory.

### Root Directory

#### Using `make`

From the root directory, run one of the following:

```
make c++-hello
```
```
make run-c++-hello
```

#### Using `bazel`

To use **`bazel`** from the root directory, run one of the following:

```
bazel run c++-hello
```
```
bazel run c++/hello:main
```

#### Using `buck2`

To use **`buck2`** from the root directory, run one of the following:

```
buck2 run :c++-hello
```
```
buck2 run c++/hello:main
```

### Source Directory _(optional)_

#### Using `make`

From the source directory, you can run:

```
make run
```

#### Using `c++ compilers`

If you used **`g++`**, **`clang++`**, **`icpx`** or other **C++ Compilers** for
building the program:

```
cd src
./c++-hello
```

#### Using `bazel`

To use **`bazel`** from the source directory, run one of the following:

```
bazel run main
```
```
bazel run c++-hello
```

#### Using `buck2`

To use **`buck2`** from the source directory, run one of the following:

```
buck2 run :main
```
```
buck2 run :c++-hello
```

## License

Licensed under [**MIT License**](LICENSE).
