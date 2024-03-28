# `Rust/Hello`

This is a **Hello World** program written in **Rust**.

``` Rust
// Hello World in Rust !

fn main() {
    println!("Hello World from Rust !");
}
```

## Prerequisite

To run and build this program you need to have the following:

<div align="center">

| Name | Commands | Required | Recommended | Optional | Notes |
|:----:|:--------:|:--------:|:-----------:|:--------:|:-----:|
| [**Rust Toolchain**](https://www.rust-lang.org/tools/install) | **`rustc`**<br>**`cargo`** | &#9989; | &#9989; | &#10062; | **`rustup install stable`** |
| [**Buck 2**](https://buck2.build/docs/getting_started/) | **`buck2`** | &#10062; | &#10062; | &#9989; | **`cargo install buck2`** |

</div>

## Building

This program is designed to be built automatically using tools such as
**`cargo`** and **`buck`**, or manually with **`rustc`**, **`gccrs`**, or other
**Rust Compilers**. You can initiate the build process either from the root
directory or the source directory.

### Root Directory

#### Using `cargo`

From the root directory, run one of the following:

```
cargo build -p rust-hello
```
```
cargo build --package rust-hello
```

#### Using `buck2`

To use **`buck2`** from the root directory, run one of the following:

```
buck2 build :rust-hello
```
```
buck2 build rust/hello:main
```

### Source Directory _(optional)_

#### Using `cargo`

From the source directory, you can run:

```
cargo build
```

#### Using `rust compilers`

To use **`rustc`**, **`gccrs`**, or other **Rust Compilers** from the source
directory, run one of the following:

> [!CAUTION]
> This **will create build artifacts** in the source directory that you may
> **have to manually remove**.

> [!NOTE]
> The **sources** are located in the **src** directory.

```
cd src
rustc -g -O hello.rs -o rust-hello
```

#### Using `buck2`

To use **`buck2`** from the source directory, run one of the following:

```
buck2 build :main
```
```
buck2 build :rust-hello
```

## Running

The execution of this program can be seamlessly handled using automated build
tools like **`cargo`** and **`buck`**, or manually with **`rustc`**,
**`gccrs`**, or other **Rust Compilers**. You can run the program from either
the root directory or the source directory.

### Root Directory

#### Using `cargo`

From the root directory, run one of the following:

```
cargo run --bin rust-hello
```

#### Using `buck2`

To use **`buck2`** from the root directory, run one of the following:

```
buck2 run :rust-hello
```
```
buck2 run rust/hello:main
```

### Source Directory _(optional)_

#### Using `cargo`

From the source directory, you can run:

```
cargo run
```

#### Using `rust compilers`

If you used **`rustc`**, **`gccrs`**, or other **Rust Compilers** for building
the program:

```
cd src
./rust-hello
```

#### Using `buck2`

To use **`buck2`** from the source directory, run one of the following:

```
buck2 run :main
```
```
buck2 run :rust-hello
```

## License

Licensed under [**MIT License**](LICENSE).
