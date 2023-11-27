# `Fortran/Greeter`

This is a **Greeter** program written in **Fortran**.

## Prerequisite

To run and build this program you need to install:

* [**GNU Fortran Compiler**](https://gcc.gnu.org)
  * `gfortran`

* [**Fortran Package Manager**](https://fpm.fortran-lang.org/install/index.html#install)
  * `fpm`

## Building

### Root Directory

From the root directory run one of the following:

* ```
  fpm build
  ```
* ```
  fpm build -C fortran/greeter
  ```

### Source Directory

From the source directory you can run:

* ```
  fpm build
  ```

You can also use `gfortran` from the source directory:

* ```
  gfortran greeter.f90 -o fortran-greeter
  ```

## Running

### Root Directory

From the root directory run one of the following:

* ```
  fpm run fortran-greeter
  ```
* ```
  fpm run -C fortran/greeter
  ```

### Source Directory _(optional)_

From the source directory you can run one of the following:

* ```
  fpm run
  ```

If you used `gfortran` for building:

* ```
  ./fortran-greeter
  ```

## License

Licensed under [**MIT License**](https://github.com/altersabeh/codes/blob/main/LICENSE).
