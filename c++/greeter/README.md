# `C++/Greeter`

This is a **Greeter** program written in **C++**.

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

* `make build-c++-greeter`

### Source Directory _(optional)_

From the source directory you can run:

* `make build`

You can also use `g++` or `clang++` from the source directory:

* `g++ greeter.cpp -o c++-greeter`
* `clang++ greeter.cpp -o c++-greeter`

## Running

### Root Directory

From the root directory run one of the following:

* `make c++-greeter`
* `make run-c++-greeter`

### Source Directory _(optional)_

From the source directory you can run:

* `make run`

If you used `g++` or `clang++` for building:

* `./c++-greeter`

## License

Licensed under [**MIT License**](https://github.com/altersabeh/codes/blob/main/LICENSE).
