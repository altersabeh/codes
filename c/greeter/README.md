# `C/Greeter`

This is a **Greeter** program written in **C**.

## Prerequisite

To run and build this program you need to install:

* [**GNU C Collection**](https://gcc.gnu.org)
  * `gcc`

* [**LLVM**](https://releases.llvm.org/)
  * `clang`'

* [**GNU Make**](https://www.gnu.org/software/make/)
  * `make`

## Building

### Root Directory

From the root directory run one of the following:

* `make build-c-greeter`

### Source Directory _(optional)_

From the source directory you can run:

* `make build`

You can also use `gcc` or `clang` from the source directory:

* `gcc greeter.c -o c-greeter`
* `clang greeter.c -o c-greeter`

## Running

### Root Directory

From the root directory run one of the following:

* `make c-greeter`
* `make run-c-greeter`

### Source Directory _(optional)_

From the source directory you can run:

* `make run`

If you used `gcc` or `clang` for building:

* `./c-greeter`

## License

Licensed under [**MIT License**](https://github.com/altersabeh/codes/blob/main/LICENSE).
