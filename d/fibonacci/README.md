# `D/Fibonacci`

This is a **Fibonacci../hello/README.md** program written in **D**.

## Prerequisite

To run and build this program you need to install:

* [**DMD Compiler**](https://dlang.org/download.html)
  * `dub`
  * `dmd`

* [**GNU Compiler Collection**](https://gcc.gnu.org/) _**(Optional)**_
  * `gdc`

## Building

### Root Directory

From the root directory run one of the following:

* `dub build :d-fibonacci`
* `dub build codes:d-fibonacci`
* `dub build --root c#/fibonacci`

### Source DIrectory _(optional)_

From the source directory you can run:

* `dub build`

You can also use `dmd` or `gdc` from the source directory:

* `dmd fibonacci.d -of=d-fibonacci`
* `gdc fibonacci.d -o d-fibonacci`

## Running

### Root Directory

From the root directory run:

* `dub run :d-fibonacci`
* `dub run codes:d-fibonacci`
* `dub run --root c#/fibonacci`

### Source DIrectory _(optional)_

From the source directory you can run:

* `dub run`
* `dmd -run fibonacci.d`

If you used `dmd` or `gdc` for building:

* `./d-fibonacci`

## License

Licensed under [**MIT License**](https://github.com/altersabeh/codes/blob/main/LICENSE).
