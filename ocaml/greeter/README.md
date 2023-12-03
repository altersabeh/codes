# `OCaml/Greeter`

This is a **Greeter** program written in **OCaml**.

## Prerequisite

To run and build this program you need to have the following:

<div align="center">

| Name | Commands | Required | Recommended | Optional | Notes |
|:----:|:--------:|:--------:|:-----------:|:--------:|:-----:|
| [**OCaml**](https://ocaml.org/install) | **`ocaml`**<br>**`ocamlc`**<br>**`ocamlopt`**<br>**`ocamlrun`** | &#9989; | &#9989; | &#10062; | **`opam switch create x.y.z`**<br>or<br>**`sudo apt install ocaml`** |
| [**Dune**](https://dune.readthedocs.io/en/latest/quick-start.html) | **`dune`** | &#9989; | &#9989; | &#10062; | **`opam install dune`**<br>or<br>**`sudo apt install ocaml-dune`** |

</div>

## Building

This program is designed to be built automatically using tools such as
**`dune`**, or manually with **`ocamlc`**, **`ocamlopt`**, or other **Ocaml
Compilers**. You can initiate the build process either from the root directory
or the source directory.

### Root Directory

#### Using `dune`

From the root directory, run one of the following:

```
dune build -p ocaml-greeter
```
```
dune build --only-package ocaml-greeter
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
ocamlc greeter.ml -o ocaml-greeter
```
```
cd bin
ocamlopt greeter.ml -o ocaml-greeter
```

## Running

The execution of this program can be seamlessly handled using automated build
tools like **`dune`**, or manually with **`ocamlc`**, **`ocamlopt`**, or other
**OCaml Compilers**. You can run the program from either the root directory or
the source directory.

### Root Directory

#### Using `dune `

From the root directory, run one of the following:

```
dune exec ocaml-greeter
```
```
dune exec ocaml/greeter/bin/greeter.exe
```

#### Using `ocaml interpreter`

To use **`ocaml`** to run it directly from root directory:

```
ocaml ocaml/greeter/bin/greeter.ml
```

### Source Directory _(optional)_

#### Using `dune`

From the source directory, you can run one of the following:

```
dune exec ocaml-greeter
```
```
dune exec bin/greeter.exe
```

#### Using `ocaml compilers`

If you used **`ocamlc`**, **`ocamlopt`**, or other **OCaml Compilers** for
building the program:

```
# using ocamlc
cd src
./ocaml-greeter
```
```
# using ocamlc
cd src
ocamlrun ocaml-greeter
```
```
# using ocamlopt
cd bin
./ocaml-greeter
```

#### Using `ocaml`

To use **`ocaml`** to run it directly from source directory, run one of the
following:

```
# with the .ocamlinit file
ocaml
```
```
ocaml bin/greeter.ml
```

## License

Licensed under [**MIT License**](LICENSE).
