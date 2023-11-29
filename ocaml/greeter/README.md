# `OCaml/Greeter`

This is a **Greeter** program written in **OCaml**.

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
  dune build -p ocaml-greeter
  ```
* ```
  dune build --only-package ocaml-greeter
  ```

### Source Directory _(optional)_

From the source directory you can run:

* ```
  dune build
  ```

You can also use `ocamlc` _**(bytecode)**_ or `ocamlopt` _**(native code)**_ from the source directory:

* ```
  ocamlc greeter.ml -o ocaml-greeter
  ```
* ```
  ocamlopt greeter.ml -o ocaml-greeter
  ```

## Running

### Root Directory

From the root directory run:

* ```
  dune exec ocaml-greeter
  ```
* ```
  dune exec ocaml/greeter/bin/greeter.exe
  ```

You can also use `ocaml` to run it directly:

* ```
  ocaml ocaml/greeter/bin/greeter.ml
  ```

### Source Directory _(optional)_

From the source directory you can run:

* ```
  dune exec ocaml-greeter
  ```
* ```
  dune exec ./greeter.exe
  ```

If you used `ocamlc` or `ocamlopt` for building:

* ```
  ./ocaml-greeter
  ```

You can also use `ocaml` to run it directly:

* ```
  ocaml greeter.ml
  ```

## License

Licensed under [**MIT License**](LICENSE).
