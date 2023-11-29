# `C++/Fibonacci`

This is a **Fibonacci** program written in **C++**.

## Prerequisite

To run and build this program you need to have the following:

| Name | Commands | Required | Recommended | Optional | Notes |
|:----:|:--------:|:--------:|:-----------:|:--------:|:-----:|
| [**GNU Make**](https://www.gnu.org/software/make/) | **`make`** | &#9989; | &#9989; | &#10062; | **`sudo apt install make`** |
| [**GNU C++ Compiler**](https://gcc.gnu.org) | **`g++`** | &#9989; | &#9989; | &#10062; | **`sudo apt install g++`** |
| [**Clang C++ Compiler**](https://releases.llvm.org/download.html) | **`clang++`** | &#10062; | &#9989; | &#9989; | **`sudo apt install clang`** |
| [**Intel C++ Compiler**](https://www.intel.com/content/www/us/en/developer/tools/oneapi/dpc-compiler.html) | **`icpx`**<br>**`dpcpp`** | &#10062; | &#10062; | &#9989; | **`sudo apt install intel-basekit`**<br>**`sudo apt install intel-hpckit`** |
| [**NVIDIA Cuda Compiler**](https://developer.nvidia.com/cuda-downloads) | **`nvcc`** | &#10062; | &#10062; | &#9989; | **`sudo apt install nvidia-cuda-toolkit`**<br>**`sudo apt instal cuda`** |
| [**Bazel Build**](https://bazel.build/) | **`bazel`** | &#10062; | &#10062; | &#9989; | **`sudo apt install bazel`** |

## Building

This program is designed to be built automatically using tools such as `make` and `bazel`, or manually with `g++`, `clang++`, and `icpx` or other **C++ Compilers**. You can initiate the build process either from the root directory or the source directory.

### Root Directory

#### Using `make`

From the root directory:

* <pre>
  <code><b>make build-c++-fibonacci</b></code>
  </pre>

#### Using [`bazel`](https://bazel.build/install)

To use **`bazel`** from the root directory, run one of the following:

* <pre>
  <code><b>bazel build c++-fibonacci</b></code>
  </pre>
* <pre>
  <code><b>bazel build c++/fibonacci:main</b></code>
  </pre>

### Source Directory _(optional)_

#### Using `make`

From the source directory:

* <pre>
  <code><b>
  make build</b></code>
  </pre>

#### Using `c++ compilers`

To use **`g++`**,**`clang++`**, **`icpx`**, or other **C++ Compilers** from the source directory, run one of the following:

> [!NOTE]
> This will create build artifacts in the source directory that you may have to manually remove.

* <pre>
  <code><b>cd src</b></code>
  <code><b>g++ fibonacci.cpp -lntl -lgmp -lm -o c++-fibonacci</b></code>
  </pre>
* <pre>
  <code><b>
  cd src
  clang++ fibonacci.cpp -lntl -lgmp -lm -o c++-fibonacci</b></code>
  </pre>
* <pre>
  <code><b>cd src
  icpx fibonacci.cpp -lntl -lgmp -lm -o c++-fibonacci</b></code>
  </pre>

#### Using [`bazel`](https://bazel.build/install)

To use **`bazel`** from the source directory, run one of the following:

* <pre>
  <code><b>
  bazel build main</b></code>
  </pre>
* <pre>
  <code><b>
  bazel build c++-fibonacci</b></code>
  </pre>

## Running

The execution of this program can be seamlessly handled using automated build tools like `make` and `bazel`, or manually with `g++`, `clang++`, and `icpx` or other **C++ Compilers**. You can run the program from either the root directory or the source directory.

### Root Directory

#### Using `make`

From the root directory, run one of the following:

* <pre>
  <code><b>
  make c++-fibonacci</b></code>
  </pre>
* <pre>
  <code><b>
  make run-c++-fibonacci</b></code>
  </pre>

#### Using [`bazel`](https://bazel.build/install)

To use **`bazel`** from the root directory, run one of the following:

* <pre>
  <code><b>
  bazel run c++-fibonacci</b></code>
  </pre>
* <pre>
  <code><b>
  bazel run c++/fibonacci:main</b></code>
  </pre>

### Source Directory _(optional)_

From the source directory you can run:

#### Using `make`

* <pre>
  <code><b>
  make run</b></code>
  </pre>

#### Using `c++ compilers`

If you used **`g++`**, **`clang++`**, **`icpx`** or other **C++ Compilers** for building the program:

* <pre>
  <code><b>
  cd src
  ./c++-fibonacci</b></code>
  </pre>

#### Using [`bazel`](https://bazel.build/install)

To use **`bazel`** from the source directory, run one of the following:

* <pre>
  <code><b>
  bazel run main</b></code>
  </pre>
* <pre>
  <code><b>
  bazel run c++-fibonacci</b></code>
  </pre>

## License

Licensed under [**MIT License**](https://github.com/altersabeh/codes/blob/main/LICENSE).
