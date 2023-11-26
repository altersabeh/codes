# `Objective-C/Fibonacci`

This is a **Fibonacci** program written in **Objective-C**.

## Prerequisite

To run and build this program you need to install:

* [**GNU Objective-C Compiler**](https://gcc.gnu.org)
  * `gcc`

* [**LLVM**](https://releases.llvm.org/) _**(Recommended)**_
  * `clang`'

* [**GNU Make**](https://www.gnu.org/software/make/)
  * `make`

* [**GNUstep**](https://gnustep.github.io/)
  * `gnustep-config`

## Building

### Root Directory

From the root directory run one of the following:

* `make build-objc-fibonacci`

### Source Directory _(optional)_

From the source directory you can run:

* `make build`

You can also use `gcc` or `clang` from the source directory:

_(**Note :** @autoreleasepool block notation is not supported by **gcc**)_

* ``gcc fibonacci.m `gnustep-config --objc-flags` -lgnustep-base -lobjc -lcrypto -o objc-fibonacci``
* ``clang fibonacci.m `gnustep-config --objc-flags` -lgnustep-base -lobjc -lcrypto -o objc-fibonacci``

## Running

### Root Directory

From the root directory run one of the following:

* `make objc-fibonacci`
* `make run-objc-fibonacci`

### Source Directory _(optional)_

From the source directory you can run:

* `make run`

If you used `gcc` or `clang` for building:

* `./objc-fibonacci`

## License

Licensed under [**MIT License**](https://github.com/altersabeh/codes/blob/main/LICENSE).
