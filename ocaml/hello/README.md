# `OCaml/Hello`

This is a **Hello World** program written in **OCaml**.

## Prerequisite

To run and build this program you need to install:

* [**OCaml**](https://ocaml.org/install)
  * `ocaml`
  * `ocamlc`
  * `ocamlopt`

* [**Dune**](https://dune.readthedocs.io/en/latest/quick-start.html)
  * `dune`

## Building

### Root Directory

From the root directory run the following:

* `dune build -p ocaml-hello`
* `dune build --only-package ocaml-hello`

### Source Directory _(optional)_

From the source directory you can run:

* `dune build`

You can also use `ocamlc` or `ocamlopt` from the source directory:

* `ocamlc hello.ml -o ocaml-hello` _**(bytecode)**_
* `ocamlopt hello.ml -o ocaml-hello` _**(native code)**_

## Running

### Root Directory

From the root directory run:

* `dune exec ocaml-hello`
* `dune exec ocaml/hello/hello.exe`

You can also use `ocaml` to run it directly:

* `ocaml ocaml/hello/hello.ml`

### Source DIrectory _(optional)_

From the source directory you can run:

* `dune exec ocaml-hello`
* `dune exec ./hello.exe`

If you used `ocamlc` or `ocamlopt` for building:

* `./ocaml-hello`

You can also use `ocaml` to run it directly:

* `ocaml hello.ml`

## License

Licensed under [**MIT License**](https://github.com/altersabeh/codes/blob/main/LICENSE).
