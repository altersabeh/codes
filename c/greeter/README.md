# `C/Greeter`

This is a **Greeter** program written in **C**.

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
  make build-c-greeter
  ```

You can also use [`bazel`](https://bazel.build/install) from the root directory: _**(optional)**_

* ```
  bazel build c-greeter
  ```
* ```
  bazel build c/greeter:main
  ```

### Source Directory _(optional)_

From the source directory you can run:

* ```
  make build
  ```

You can also use `gcc` or `clang` from the source directory:

* ```
  gcc greeter.c -o c-greeter
  ```
* ```
  clang greeter.c -o c-greeter
  ```

You can also use [`bazel`](https://bazel.build/install) from the source directory: _**(optional)**_

* ```
  bazel build main
  ```
* ```
  bazel build c-greeter
  ```

## Running

### Root Directory

From the root directory run one of the following:

* ```
  make c-greeter
  ```
* ```
  make run-c-greeter
  ```

You can also use [`bazel`](https://bazel.build/install) from the root directory: _**(optional)**_

* ```
  bazel run c-greeter
  ```
* ```
  bazel run c/greeter:main
  ```

### Source Directory _(optional)_

From the source directory you can run:

* ```
  make run
  ```

If you used `gcc` or `clang` for building:

* ```
  ./c-greeter
  ```

You can also use [`bazel`](https://bazel.build/install) from the source directory: _**(optional)**_

* ```
  bazel run main
  ```
* ```
  bazel run c-greeter
  ```

## License

Licensed under [**MIT License**](https://github.com/altersabeh/codes/blob/main/LICENSE).
