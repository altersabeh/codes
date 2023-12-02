# `Objective-C/Greeter`

This is a **Greeter** program written in **Objective-C**.

## Prerequisite

To run and build this program you need to have the following:

<div align="center">

| Name | Commands | Required | Recommended | Optional | Notes |
|:----:|:--------:|:--------:|:-----------:|:--------:|:-----:|
| [**GNU Make**](https://www.gnu.org/software/make/) | **`make`** | &#9989; | &#9989; | &#10062; | **`sudo apt install make`** |
| [**GNUstep**](https://gnustep.github.io/resources/downloads.html) | **`gnustep-config`** | &#9989; | &#9989; | &#10062; | **`sudo apt install gnustep-devel `** |
| [**GNU Objective-C Compiler**](https://gcc.gnu.org) | **`gcc`** | &#9989; | &#9989; | &#10062; | **`sudo apt install gobjc`** |
| [**LLVM C Compiler**](https://releases.llvm.org/download.html) | **`clang`** | &#9989; | &#9989; | &#9989; | **`sudo apt install clang`** |
| [**Intel C Compiler**](https://www.intel.com/content/www/us/en/developer/tools/oneapi/dpc-compiler.html) | **`icx`**<br>**`dpcpp`** | &#10062; | &#10062; | &#9989; | **`sudo apt install intel-basekit`**<br>or<br>**`sudo apt install intel-hpckit`** |
| [**Bazel**](https://bazel.build/) | **`bazel`**<br>**`bazelisk`** | &#10062; | &#10062; | &#9989; | **`npm install -g @bazel/bazelisk`**<br>or<br>**`sudo apt install bazel`** |

</div>

## Building

This program is designed to be built automatically using tools such as
**`make`** and **`bazel`**, or manually with **`gcc`**, **`clang`**, **`icx`**,
or other **Objective-C Compilers**. You can initiate the build process either
from the root directory or the source directory.

### Root Directory

#### Using `make`

From the root directory:

```
make build-objc-greeter
```

<!--

#### Using `bazel`

To use **`bazel`** from the root directory, run one of the following:

```
bazel build objc-greeter
```
```
bazel build c/greeter:main
```

-->

### Source Directory _(optional)_

#### Using `make`

From the source directory, you can run:

```
make build
```

#### Using `objective-c compilers`

To use **`gcc`**, **`clang`**, **`icx`**, or other **Objective-C Compilers**
from the source directory, run one of the following:

> [!CAUTION]
> This **will create build artifacts** in the source directory that you may
> **have to manually remove**.

> [!NOTE]
> The **sources** are located in the **src** directory.

> [!IMPORTANT]
> Some **compilers such as gcc** does may **not currently support the
> `@autoreleasepool` block** and may **require modifying the source code**.

```
cd src
gcc greeter.m `gnustep-config --objc-flags` -lgnustep-base -lobjc -o objc-greeter
```
```
cd src
clang greeter.m `gnustep-config --objc-flags` -lgnustep-base -lobjc -o objc-greeter
```
```
cd src
icx greeter.m `gnustep-config --objc-flags` -lgnustep-base -lobjc -o objc-greeter
```

<!--

#### Using `bazel`

To use **`bazel`** from the source directory, run one of the following:

```
bazel build main
```
```
bazel build objc-greeter
```

-->

## Running

The execution of this program can be seamlessly handled using automated build
tools like **`make`** and **`bazel`**, or manually with **`gcc`**, **`clang`**,
**`icx`** or other **Objective-C Compilers**. You can run the program from
either the root directory or the source directory.

### Root Directory

#### Using `make`

From the root directory, run one of the following:

```
make objc-greeter
```
```
make run-objc-greeter
```

<!--

#### Using `bazel`

To use **`bazel`** from the root directory, run one of the following:

```
bazel run objc-greeter
```
```
bazel run c/greeter:main
```

-->

### Source Directory _(optional)_

#### Using `make`

From the source directory, you can run:

```
make run
```

#### Using `objective-c compilers`

If you used **`gcc`**, **`clang`**, **`icx`** or other **Objective-C Compilers**
for building the program:

```
cd src
./objc-greeter
```

<!--

#### Using `bazel`

To use **`bazel`** from the source directory, run one of the following:

```
bazel run main
```
```
bazel run objc-greeter
```

-->

## License

Licensed under [**MIT License**](LICENSE).
