# `C++/Fibonacci`

This is a **Fibonacci** program written in **C++**.

## Prerequisite

To run and build this program you need to have the following:

| Name | Command | Required | Recommended | Optional |
|------|---------|----------|-------------|----------|
| [**GNU C++ Compiler**](https://gcc.gnu.org) | `g++` | :heavy_check_mark: | No |
| [**Clang C++ Compiler**](https://releases.llvm.org/download.html) | `clang++` | Yes | Yes |
| [**Intel C++ Compiler**](https://www.intel.com/content/www/us/en/developer/tools/oneapi/dpc-compiler.html) | `icpx` | No | Yes |
| [**GNU Make**](https://www.gnu.org/software/make/) | `make` | Yes | No |

## Building

This program is designed to be built automatically using tools such as `make` and `bazel`, or manually with `g++`, `clang++`, and `icpx` or other **C++ Compilers**. You can initiate the build process either from the root directory or the source directory.

### Root Directory

#### Using `make`

From the root directory:

* ```
  make build-c++-fibonacci
  ```

#### Using [`bazel`](https://bazel.build/install) _(optional)_

To use `bazel` from the root directory, run one of the following:

* ```
  bazel build c++-fibonacci
  ```
* ```
  bazel build c++/fibonacci:main
  ```

### Source Directory _(optional)_

#### Using `make`

From the source directory:

* ```
  make build
  ```

#### Using `c++ compilers`

To use `g++`,`clang++`, or `icpx` from the source directory, run one of the following:

* ```
  cd src
  g++ fibonacci.cpp -lntl -lgmp -lm -o c++-fibonacci
  ```
* ```
  cd src
  clang++ fibonacci.cpp -lntl -lgmp -lm -o c++-fibonacci
  ```
* ```
  cd src
  icpx fibonacci.cpp -lntl -lgmp -lm -o c++-fibonacci
  ```

#### Using [`bazel`](https://bazel.build/install)

To use `bazel` from the source directory, run one of the following:

* ```
  bazel build main
  ```
* ```
  bazel build c++-fibonacci
  ```

## Running

The execution of this program can be seamlessly handled using automated build tools like `make` and `bazel`, or manually with `g++`, `clang++`, and `icpx` or other **C++ Compilers**. You can run the program from either the root directory or the source directory.

### Root Directory

#### Using `make`

From the root directory, run one of the following:

* ```
  make c++-fibonacci
  ```
* ```
  make run-c++-fibonacci
  ```

#### Using [`bazel`](https://bazel.build/install) _(optional)_

To use `bazel` from the root directory, run one of the following:

* ```
  bazel run c++-fibonacci
  ```
* ```
  bazel run c++/fibonacci:main
  ```

### Source Directory _(optional)_

From the source directory you can run:

#### Using `make`

* ```
  make run
  ```

#### Using `c++ compilers`

If you used `g++`, `clang++`, or `icpx` for building the program:

* ```
  cd src
  ./c++-fibonacci
  ```

#### Using [`bazel`](https://bazel.build/install)

To use `bazel` from the source directory, run one of the following:

* ```
  bazel run main
  ```
* ```
  bazel run c++-fibonacci
  ```

## License

Licensed under [**MIT License**](https://github.com/altersabeh/codes/blob/main/LICENSE).
