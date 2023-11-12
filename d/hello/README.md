# `D/Hello`

This is a **Hello World** program written in **D**.

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

* `dub build :d-hello`
* `dub build codes:d-hello`
* `dub build --root c#/hello`

### Source Directory _(optional)_

From the source directory you can run:

* `dub build`

You can also use `dmd` or `gdc` from the source directory:

* `dmd hello.d -of=d-hello`
* `gdc hello.d -o d-hello`

## Running

### Root Directory

From the root directory run:

* `dub run :d-hello`
* `dub run codes:d-hello`
* `dub run --root c#/hello`

### Source Directory _(optional)_

From the source directory you can run:

* `dub run`
* `dmd -run hello.d`

If you used `dmd` or `gdc` for building:

* `./d-hello`

## License

Licensed under [**MIT License**](https://github.com/altersabeh/codes/blob/main/LICENSE).
