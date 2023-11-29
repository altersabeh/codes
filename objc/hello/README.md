# `Objective-C/Hello`

This is a **Hello World** program written in **Objective-C**.

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

* ```
  make build-objc-hello
  ```

### Source Directory _(optional)_

From the source directory you can run:

* ```
  make build
  ```

You can also use `gcc` or `clang` from the source directory:

_(**Note :** @autoreleasepool block notation is not supported by **gcc**)_

* ```
  gcc hello.m `gnustep-config --objc-flags` -lgnustep-base -lobjc -o objc-hello
  ```
* ```
  clang hello.m `gnustep-config --objc-flags` -lgnustep-base -lobjc -o objc-hello
  ```

## Running

### Root Directory

From the root directory run one of the following:

* ```
  make objc-hello
  ```
* ```
  make run-objc-hello
  ```

### Source Directory _(optional)_

From the source directory you can run:

* ```
  make run
  ```

If you used `gcc` or `clang` for building:

* ```
  ./objc-hello
  ```

## License

Licensed under [**MIT License**](LICENSE).
