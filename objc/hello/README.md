# `Objective-C/Hello`

This is a **Hello World** program written in **Objective-C**.

``` Objective-C
// Hello World in Objective-C !

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        printf("Hello World from Objective-C !\n");
    }
    return 0;
}
```

## Prerequisite

To run and build this program you need to have the following:

<div align="center">

| Name | Commands | Required | Recommended | Optional | Notes |
|:----:|:--------:|:--------:|:-----------:|:--------:|:-----:|
| [**GNU Make**](https://www.gnu.org/software/make/) | **`make`** | &#9989; | &#9989; | &#10062; | **`apt install make`** |
| [**GNUstep**](https://gnustep.github.io/resources/downloads.html) | **`gnustep-config`** | &#9989; | &#9989; | &#10062; | **`apt install gnustep-devel `** |
| [**GNU Objective-C Compiler**](https://gcc.gnu.org) | **`gcc`** | &#9989; | &#9989; | &#10062; | **`apt install gobjc`** |
| [**LLVM C Compiler**](https://releases.llvm.org/download.html) | **`clang`** | &#9989; | &#9989; | &#9989; | **`apt install clang`** |
| [**Intel C Compiler**](https://www.intel.com/content/www/us/en/developer/tools/oneapi/dpc-compiler.html) | **`icx`**<br>**`dpcpp`** | &#10062; | &#10062; | &#9989; | **`apt install intel-basekit`**<br>or<br>**`apt install intel-hpckit`** |
| [**Bazel**](https://bazel.build/) | **`bazel`**<br>**`bazelisk`** | &#10062; | &#10062; | &#9989; | **`npm install -g @bazel/bazelisk`**<br>or<br>**`apt install bazel`** |
| [**Buck 2**](https://buck2.build/docs/getting_started/) | **`buck2`** | &#10062; | &#10062; | &#9989; | **`cargo install buck2`** |

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
make build-objc-hello
```

<!--

#### Using `bazel`

To use **`bazel`** from the root directory, run one of the following:

```
bazel build objc-hello
```
```
bazel build c/hello:main
```

-->

#### Using `buck2`

To use **`buck2`** from the root directory, run one of the following:

```
buck2 build :objc-hello
```
```
buck2 build objc/hello:main
```

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
gcc `gnustep-config --objc-flags` hello.m -o objc-hello
```
```
cd src
clang `gnustep-config --objc-flags` hello.m -o objc-hello
```
```
cd src
icx `gnustep-config --objc-flags` hello.m -o objc-hello
```

<!--

#### Using `bazel`

To use **`bazel`** from the source directory, run one of the following:

```
bazel build main
```
```
bazel build objc-hello
```

-->

#### Using `buck2`

To use **`buck2`** from the source directory, run one of the following:

```
buck2 build :main
```
```
buck2 build :objc-hello
```

## Running

The execution of this program can be seamlessly handled using automated build
tools like **`make`** and **`bazel`**, or manually with **`gcc`**, **`clang`**,
**`icx`** or other **Objective-C Compilers**. You can run the program from
either the root directory or the source directory.

### Root Directory

#### Using `make`

From the root directory, run one of the following:

```
make objc-hello
```
```
make run-objc-hello
```

<!--

#### Using `bazel`

To use **`bazel`** from the root directory, run one of the following:

```
bazel run objc-hello
```
```
bazel run c/hello:main
```

-->

#### Using `buck2`

To use **`buck2`** from the root directory, run one of the following:

```
buck2 run :objc-hello
```
```
buck2 run objc/hello:main
```

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
./objc-hello
```

<!--

#### Using `bazel`

To use **`bazel`** from the source directory, run one of the following:

```
bazel run main
```
```
bazel run objc-hello
```

-->

#### Using `buck2`

To use **`buck2`** from the source directory, run one of the following:

```
buck2 run :main
```
```
buck2 run :objc-hello
```

## License

Licensed under [**MIT License**](LICENSE).
