# `C++/Hello`

This is a **Hello World** program written in **C++**.

## Prerequisite

To run and build this program you need to install:

* [**GNU C++ Compiler**](https://gcc.gnu.org)
  * `g++`

* [**LLVM**](https://releases.llvm.org/)
  * `clang++`'

* [**GNU Make**](https://www.gnu.org/software/make/)
  * `make`

## Building

### Root Directory

From the root directory run one of the following:

* `make build-c++-hello`

### Source Directory _(optional)_

From the source directory you can run:

* `make build`

You can also use `g++` or `clang++` from the source directory:

* `g++ hello.cpp -o c++-hello`
* `clang++ hello.cpp -o c++-hello`

## Running

### Root Directory

From the root directory run one of the following:

* `make c++-hello`
* `make run-c++-hello`

### Source Directory _(optional)_

From the source directory you can run:

* `make run`

If you used `g++` or `clang++` for building:

* `./c++-hello`

## License

Licensed under [**MIT License**](https://github.com/altersabeh/codes/blob/main/LICENSE).
