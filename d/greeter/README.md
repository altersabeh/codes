# `D/Greeter`

This is a **Greeter World** program written in **D**.

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

* `dub build :d-greeter`
* `dub build codes:d-greeter`
* `dub build --root c#/greeter`

### Source Directory _(optional)_

From the source directory you can run:

* `dub build`

You can also use `dmd` or `gdc` from the source directory:

* `dmd greeter.d -of=d-greeter`
* `gdc greeter.d -o d-greeter`

## Running

### Root Directory

From the root directory run:

* `dub run :d-greeter`
* `dub run codes:d-greeter`
* `dub run --root c#/greeter`

### Source Directory _(optional)_

From the source directory you can run:

* `dub run`
* `dmd -run greeter.d`

If you used `dmd` or `gdc` for building:

* `./d-greeter`

## License

Licensed under [**MIT License**](https://github.com/altersabeh/codes/blob/main/LICENSE).
