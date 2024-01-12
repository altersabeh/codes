# `OCaml/Hello`

This is a **Hello World** program written in **OCaml**.

``` Ocaml
(* Hello World in OCaml ! *)

let () =
    print_endline "Hello World from OCaml !"
```

## Prerequisite

To run and build this program you need to have the following:

<div align="center">

| Name | Commands | Required | Recommended | Optional | Notes |
|:----:|:--------:|:--------:|:-----------:|:--------:|:-----:|
| [**OCaml**](https://ocaml.org/install) | **`ocaml`**<br>**`ocamlc`**<br>**`ocamlopt`**<br>**`ocamlrun`** | &#9989; | &#9989; | &#10062; | **`opam switch create x.y.z`**<br>or<br>**`apt install ocaml`** |
| [**Dune**](https://dune.readthedocs.io/en/latest/quick-start.html) | **`dune`** | &#9989; | &#9989; | &#10062; | **`opam install dune`**<br>or<br>**`apt install ocaml-dune`** |
| [**Buck 2**](https://buck2.build/docs/getting_started/) | **`buck2`** | &#10062; | &#10062; | &#9989; | **`cargo install buck2`** |

</div>

## Building

This program is designed to be built automatically using tools such as
**`dune`** or manually with **`ocamlc`**, **`ocamlopt`**, or other **Ocaml
Compilers**. You can initiate the build process either from the root directory
or the source directory.

### Root Directory

#### Using `dune`

From the root directory, run one of the following:

```
dune build -p ocaml-hello
```
```
dune build --only-package ocaml-hello
```

#### Using `buck2`

To use **`buck2`** from the root directory, run one of the following:

```
buck2 build :ocaml-hello
```
```
buck2 build ocaml/hello:main
```

### Source Directory _(optional)_

#### Using `dune`

From the source directory, you can run:

```
dune build --root .
```

#### Using `ocaml compilers`

To use **`ocamlc`**, **`ocamlopt`**, or other **Ocaml Compilers** from the
source directory, run one of the following:

> [!CAUTION]
> This **will create build artifacts** in the source directory that you may
> **have to manually remove**.

> [!NOTE]
> The **sources** are located in the **bin** directory.

> [!TIP]
> * The **ocamlc** compiles the program into a **ocaml bytecode**.
> * The **ocamlopt** compiles the program into a **self contained executable**.

```
cd bin
ocamlc -g hello.ml -o ocaml-hello
```
```
cd bin
ocamlopt -g -O2 hello.ml -o ocaml-hello
```

#### Using `buck2`

To use **`buck2`** from the source directory, run one of the following:

```
buck2 build :main
```
```
buck2 build :ocaml-hello
```

## Running

The execution of this program can be seamlessly handled using automated build
tools like **`dune`**, or manually with **`ocamlc`**, **`ocamlopt`**, or other
**OCaml Compilers**. You can run the program from either the root directory or
the source directory.

### Root Directory

#### Using `dune`

From the root directory, run one of the following:

```
dune exec ocaml-hello
```
```
dune exec ocaml/hello/bin/hello.exe
```

#### Using `ocaml interpreter`

To use **`ocaml`** to run it directly from root directory:

```
ocaml ocaml/hello/bin/hello.ml
```

#### Using `buck2`

To use **`buck2`** from the root directory, run one of the following:

```
buck2 run :ocaml-hello
```
```
buck2 run ocaml/hello:main
```

### Source Directory _(optional)_

#### Using `dune`

From the source directory, you can run one of the following:

```
dune exec ocaml-hello
```
```
dune exec bin/hello.exe
```

#### Using `ocaml compilers`

If you used **`ocamlc`**, **`ocamlopt`**, or other **OCaml Compilers** for
building the program:

```
# using ocamlc
cd src
./ocaml-hello
```
```
# using ocamlc
cd src
ocamlrun ocaml-hello
```
```
# using ocamlopt
cd bin
./ocaml-hello
```

#### Using `ocaml`

To use **`ocaml`** to run it directly from source directory, run one of the
following:

```
# with the .ocamlinit file
ocaml
```
```
ocaml bin/hello.ml
```

#### Using `buck2`

To use **`buck2`** from the source directory, run one of the following:

```
buck2 run :main
```
```
buck2 run :ocaml-hello
```

## License

Licensed under [**MIT License**](LICENSE).
