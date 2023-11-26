# `OCaml/Fibonacci`

This is a **Fibonacci World** program written in **OCaml**.

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

* ```
  dune build -p ocaml-fibonacci
  ```
* ```
  dune build --only-package ocaml-fibonacci
  ```

### Source Directory _(optional)_

From the source directory you can run:

* ```
  dune build
  ```

You can also use `ocamlc` _**(bytecode)**_ or `ocamlopt` _**(native code)**_ from the source directory:

* ```
  ocamlc -I `ocamlfind query zarith` zarith.cmxa unix.cmxa fibonacci.ml -o ocaml-fibonacci
  ```
* ```
  ocamlopt -I `ocamlfind query zarith` zarith.cmxa unix.cmxa fibonacci.ml -o ocaml-fibonacci
  ```

## Running

### Root Directory

From the root directory run:

* ```
  dune exec ocaml-fibonacci
  ```
* ```
  dune exec ocaml/fibonacci/bin/fibonacci.exe
  ```

### Source Directory _(optional)_

From the source directory you can run:

* ```
  dune exec ocaml-fibonacci
  ```
* ```
  dune exec ./fibonacci.exe
  ```

If you used `ocamlc` or `ocamlopt` for building:

* ```
  ./ocaml-fibonacci
  ```

## License

Licensed under [**MIT License**](https://github.com/altersabeh/codes/blob/main/LICENSE).
