# `Rust/Hello`

This is a **Hello World** program written in **Rust**.

## Prerequisite

To run and build this program you need to install:

* [**Rust Toolchain**](https://www.rust-lang.org/tools/install)
  * `cargo`
  * `rustc`

## Building

### Root Directory

From the root directory run one of the following commands:

* ```
  cargo build -p rust-hello
  ```
* ```
  cargo build --package rust-hello
  ```

### Source Directory _(optional)_

From the source directory you can run:

* ```
  cargo build
  ```

You can also use `rustc` from the source directory:

* ```
  rustc hello.rs -o rust-hello
  ```

## Running

### Root Directory

From the root directory run:

* ```
  cargo run --bin rust-hello
  ```

### Source Directory _(optional)_

From the source directory you can run:

* ```
  cargo run
  ```

If you used `rustc` for building:

* ```
  ./rust-hello
  ```

## License

Licensed under [**MIT License**](https://github.com/altersabeh/codes/blob/main/LICENSE).
