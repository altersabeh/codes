# `C/Greeter`

This is a **Greeter World** program written in **C**.

## Prerequisite

To run and build this program you need to have the following:

| Name | Commands | Required | Recommended | Optional | Notes |
|:----:|:--------:|:--------:|:-----------:|:--------:|:-----:|
| [**GNU Make**](https://www.gnu.org/software/make/) | **`make`** | &#9989; | &#9989; | &#10062; | **`sudo apt install make`** |
| [**GNU C Compiler**](https://gcc.gnu.org) | **`gcc`** | &#9989; | &#9989; | &#10062; | **`sudo apt install gcc`** |
| [**LLVM C Compiler**](https://releases.llvm.org/download.html) | **`clang`** | &#10062; | &#9989; | &#9989; | **`sudo apt install clang`** |
| [**Intel C Compiler**](https://www.intel.com/content/www/us/en/developer/tools/oneapi/dpc-compiler.html) | **`icx`**<br>**`dpcpp`** | &#10062; | &#10062; | &#9989; | **`sudo apt install intel-basekit`**<br>**`sudo apt install intel-hpckit`** |
| [**NVIDIA Cuda Compiler**](https://developer.nvidia.com/cuda-downloads) | **`nvcc`** | &#10062; | &#10062; | &#9989; | **`sudo apt install nvidia-cuda-toolkit`**<br>**`sudo apt instal cuda`** |
| [**Bazel**](https://bazel.build/) | **`bazel`**<br>**`bazelisk`** | &#10062; | &#10062; | &#9989; | **`npm install -g @bazel/bazelisk`**<br>**`sudo apt install bazel`** |

## Building

This program is designed to be built automatically using tools such as **`make`** and **`bazel`**, or manually with **`gcc`**, **`clang`**, **`icx`**, or other **C Compilers**. You can initiate the build process either from the root directory or the source directory.

### Root Directory

#### Using `make`

From the root directory:

* ```
  make build-c-greeter
  ```

#### Using [`bazel`](https://bazel.build/install)

To use **`bazel`** from the root directory, run one of the following:

* ```
  bazel build c-greeter
  ```
* ```
  bazel build c/greeter:main
  ```

### Source Directory _(optional)_

#### Using `make`

From the source directory, you can run:

* ```
  make build
  ```

#### Using `c compilers`

To use **`gcc`**, **`clang`**, **`icx`**, or other **C Compilers** from the source directory, run one of the following:

> [!CAUTION]
> This **will create build artifacts** in the source directory that you may **have to manually remove**.

> [!TIP]
> The **sources** are located in the **`src`** directory.

* ```
  cd src
  gcc greeter.cpp -o c-greeter
  ```
* ```
  cd src
  clang greeter.cpp -o c-greeter
  ```
* ```
  cd src
  icx greeter.cpp -o c-greeter
  ```
* ```
  cd src
  dpcpp greeter.cpp -o c-greeter
  ```
* ```
  cd src
  nvcc greeter.cpp -o c-greeter
  ```


#### Using [`bazel`](https://bazel.build/install)

To use **`bazel`** from the source directory, run one of the following:

* ```
  bazel build main
  ```
* ```
  bazel build c-greeter
  ```

## Running

The execution of this program can be seamlessly handled using automated build tools like **`make`** and **`bazel`**, or manually with **`gcc`**, **`clang`**, **`icx`** or other **C Compilers**. You can run the program from either the root directory or the source directory.

### Root Directory

#### Using `make`

From the root directory, run one of the following:

* ```
  make c-greeter
  ```
* ```
  make run-c-greeter
  ```

#### Using [`bazel`](https://bazel.build/install)

To use **`bazel`** from the root directory, run one of the following:

* ```
  bazel run c-greeter
  ```
* ```
  bazel run c/greeter:main
  ```

### Source Directory _(optional)_

From the source directory, you can run:

#### Using `make`

* ```
  make run
  ```

#### Using `c compilers`

If you used **`gcc`**, **`clang`**, **`icx`** or other **C Compilers** for building the program:

* ```
  cd src
  ./c-greeter
  ```

#### Using [`bazel`](https://bazel.build/install)

To use **`bazel`** from the source directory, run one of the following:

* ```
  bazel run main
  ```
* ```
  bazel run c-greeter
  ```

## License

Licensed under [**MIT License**](LICENSE).
