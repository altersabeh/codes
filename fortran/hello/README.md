# `Fortran/Hello`

This is a **Hello World** program written in **Fortran**.

## Prerequisite

To run and build this program you need to have the following:

<div align="center">

| Name | Commands | Required | Recommended | Optional | Notes |
|:----:|:--------:|:--------:|:-----------:|:--------:|:-----:|
| [**Fortran Package Manager**](https://fpm.fortran-lang.org/install/index.html#install) | **`fpm`** | &#9989; | &#9989; | &#10062; | **`conda install fpm`**<br>or<br>**`brew tap fortran-lang/homebrew-fortran`**<br>**`brew install fpm`** |
| [**GNU Fortran Compiler**](https://gcc.gnu.org) | **`gfortran`** | &#9989; | &#9989; | &#10062; | **`sudo apt install gfortran`** |
| [**LLVM Fortran Compiler**](https://releases.llvm.org/download.html) | **`flang-new`** | &#10062; | &#10062; | &#9989; | **`sudo apt install flang`** |
| [**Intel Fortran Compiler**](https://www.intel.com/content/www/us/en/developer/tools/oneapi/dpc-compiler.html) | **`ifx`**<br>**`ifort`** | &#10062; | &#10062; | &#9989; | **`sudo apt install intel-hpckit`** |

</div>

## Building

This program is designed to be built automatically using tools such as **`fpm`**, or manually with **`gfortran`**, **`flang`**, **`ifx`**, or other **Fortran Compilers**. You can initiate the build process either from the root directory or the source directory.

### Root Directory

#### Using `fpm`

From the root directory, run one of the following:

```
fpm build
```
```
fpm build -C fortran/hello
```

### Source Directory _(optional)_

#### Using `fpm`

From the source directory, you can run:

```
fpm build
```

#### Using `fortran compilers`

To use **`gfortran`**, **`flang-new`**, **`ifx`**, or other **Fortran Compilers** from the source directory, run one of the following:

> [!CAUTION]
> This **will create build artifacts** in the source directory that you may **have to manually remove**.

> [!NOTE]
> The **sources** are located in the **app** directory.

```
cd app
gfortran hello.f90 -o fortran-hello
```
```
cd app
flang-new hello.f90 -o fortran-hello
```
```
cd app
ifx hello.f90 -o fortran-hello
```
```
cd app
ifort hello.f90 -o fortran-hello
```

## Running

The execution of this program can be seamlessly handled using automated build tools like **`fpm`**, or manually with **`gfortran`**, **`flang-new`**, **`ifx`** or other **Fortran Compilers**. You can run the program from either the root directory or the source directory

### Root Directory

#### Using `fpm`

From the root directory, run one of the following:

```
fpm run fortran-hello
```
```
fpm run -C fortran/hello
```

### Source Directory _(optional)_

#### Using `fpm`

From the source directory, you can run:

```
fpm run
```

#### Using `fortran compilers`

If you used **`gfortran`**, **`flang-new`**, **`ifx`** or other **Fortran Compilers** for building the program:

```
cd app
./fortran-hello
```

## License

Licensed under [**MIT License**](LICENSE).
