# `D/Fibonacci`

This is a **Fibonacci** program written in **D**.

## Prerequisite

To run and build this program you need to have the following:

<div align="center">

| Name | Commands | Required | Recommended | Optional | Notes |
|:----:|:--------:|:--------:|:-----------:|:--------:|:-----:|
| [**DMD Compiler**](https://dlang.org/download.html) | **`dub`**<br>**`dmd`** | &#9989; | &#9989; | &#10062; | **`sudo apt install dub`**<br>**`sudo apt install dmd-compiler`** |
| [**GNU D Compiler**](https://gcc.gnu.org) | **`gdc`** | &#10062; | &#10062; | &#9989; | **`sudo apt install gdc`** |
| [**LLVM D Compiler**](https://wiki.dlang.org/LDC) | **`ldc2`**<br>**`ldmd2`** | &#10062; | &#10062; | &#9989; | **`sudo apt install ldc`** |

</div>

## Building

This program is designed to be built automatically using tools such as **`dub`**, or manually with **`dmd`**, **`gdc`**, **`ldc2`**, or other **D Compilers**. You can initiate the build process either from the root directory or the source directory.

### Root Directory

#### Using `dub`

From the root directory, run one of the following:

```
dub build :d-fibonacci
```
```
dub build codes:d-fibonacci
```

### Source Directory _(optional)_

#### Using `dub`

From the source directory, you can run:

```
dub build
```

#### Using `d compilers`

To use **`dmd`**, **`gdc`**, **`ldc2`**, or other **D Compilers** from the source directory, run one of the following:

> [!CAUTION]
> This **will create build artifacts** in the source directory that you may **have to manually remove**.

> [!NOTE]
> The **sources** are located in the **src** directory.

```
cd src
dmd fibonacci.d -of=d-fibonacci
```
```
cd src
gdc fibonacci.d -o d-fibonacci
```
```
cd src
ldc2 fibonacci.d -o d-fibonacci
```

## Running

The execution of this program can be seamlessly handled using automated build tools like **`dub`**, or manually with **`dmd`**, **`gdc`**, **`ldc2`** or other **D Compilers**. You can run the program from either the root directory or the source directory.

### Root Directory

#### Using `dub`

From the root directory, run one of the following:

```
dub run :d-fibonacci
```
```
dub run codes:d-fibonacci
```
```
dub run --root c#/fibonacci
```

### Source Directory _(optional)_

#### Using `dub`

From the source directory, you can run one of the following:

```
dub run
```
```
dmd -run fibonacci.d
```

#### Using `d compilers`

If you used **`dmd`**, **`gdc`**, **`ldc2`** or other **D Compilers** for building the program:

```
cd src
./d-fibonacci
```

## License

Licensed under [**MIT License**](LICENSE).
