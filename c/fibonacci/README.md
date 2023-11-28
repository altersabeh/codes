# `C/Fibonacci`

This is a **Fibonacci** program written in **C**.

## Prerequisite

To run and build this program you need to install:

* [**GNU C Compiler**](https://gcc.gnu.org)
  * `gcc`

* [**LLVM**](https://releases.llvm.org/)
  * `clang`'

* [**GNU Make**](https://www.gnu.org/software/make/)
  * `make`

## Building

### Root Directory

From the root directory run one of the following:

* ```
  make build-c-fibonacci
  ```

You can also use [`bazel`](https://bazel.build/install) from the root directory: _**(optional)**_

* ```
  bazel build c-fibonacci
  ```
* ```
  bazel build c/fibonacci:main
  ```

### Source Directory _(optional)_

From the source directory you can run:

* ```
  make build
  ```

You can also use `gcc` or `clang` from the source directory:

* ```
  gcc fibonacci.c -lgmp -o c-fibonacci
  ```
* ```
  clang fibonacci.c -lgmp -o c-fibonacci
  ```

You can also use [`bazel`](https://bazel.build/install) from the source directory: _**(optional)**_

* ```
  bazel build main
  ```
* ```
  bazel build c-fibonacci
  ```

## Running

### Root Directory

From the root directory run one of the following:

* ```
  make c-fibonacci
  ```
* ```
  make run-c-fibonacci
  ```

You can also use [`bazel`](https://bazel.build/install) from the root directory: _**(optional)**_

* ```
  bazel run c-fibonacci
  ```
* ```
  bazel run c/fibonacci:main
  ```

### Source Directory _(optional)_

From the source directory you can run:

* ```
  make run
  ```

If you used `gcc` or `clang` for building:

* ```
  ./c-fibonacci
  ```

You can also use [`bazel`](https://bazel.build/install) from the source directory: _**(optional)**_

* ```
  bazel run main
  ```
* ```
  bazel run c-fibonacci
  ```

## License

Licensed under [**MIT License**](https://github.com/altersabeh/codes/blob/main/LICENSE).
