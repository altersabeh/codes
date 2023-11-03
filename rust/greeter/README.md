# `Rust/Greeter`

This is a **Greeter** program written in **Rust**.

## Prerequisite

To run and build this program you need to install:

* [**Rust Toolchain**](https://www.rust-lang.org/tools/install)
  * `cargo`
  * `rustc`

## Building

### Root Directory

From the root directory run one of the following commands:

* `cargo build -p rust-greeter`
* `cargo build --package rust-greeter`

### Source DIrectory _(optional)_

From the source directory you can run:

* `cargo build`

You can also use `rustc` from the source directory:

* `rustc greeter.rs -o rust-greeter`

## Running

### Root Directory

From the root directory run:

* `cargo run --bin rust-greeter`

### Source DIrectory _(optional)_


From the source directory you can run:

* `cargo run`

If you used `rustc` for building:

* `./rust-greeter`

## License

Licensed under [**MIT License**](https://github.com/altersabeh/codes/blob/main/LICENSE).
