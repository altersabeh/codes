# `Haskell/Fibonacci`

This is a **Fibonacci** program written in **Haskell**.

## Prerequisite

To run and build this program you need to have the following:

<div align="center">

| Name | Commands | Required | Recommended | Optional | Notes |
|:----:|:--------:|:--------:|:-----------:|:--------:|:-----:|
| [**Glasgow Haskell Compiler**](https://www.haskell.org/ghc/distribution_packages.html) | **`ghc`**<br>**`runhaskell`**<br>**`runghc`** | &#9989; | &#9989; | &#10062; | **`ghcup install ghc`**<br>or<br>**`apt install ghc`** |
| [**Haskell Cabal**](https://www.haskell.org/cabal/download.html) | **`cabal`** | &#9989; | &#9989; | &#10062; | **`ghcup install cabal`**<br>or<br>**`apt install cabal-install`** |
| [**Haskell Stack**](https://docs.haskellstack.org/en/stable/install_and_upgrade/) | **`stack`** | &#10062; | &#9989; | &#9989; | **`ghcup install stack`**<br>or<br>**`apt install haskell-stack`** |
| [**Buck 2**](https://buck2.build/docs/getting_started/) | **`buck2`** | &#10062; | &#10062; | &#9989; | **`cargo install buck2`** |

</div>

## Building

This program is designed to be built automatically using tools such as **`cabal`** and **`stack`**, or manually with **`ghc`**, or other **Haskell Compilers**. You can initiate the build process either from the root directory or the source directory.

### Root Directory

#### Using `cabal`

From the root directory:

```
cabal build haskell-fibonacci
```

#### Using `stack`

From the root directory:

```
stack build haskell-fibonacci
```

#### Using `buck2`

To use **`buck2`** from the root directory, run one of the following:

```
buck2 build :haskell-fibonacci
```
```
buck2 build haskell/fibonacci:main
```

### Source Directory _(optional)_

#### Using `cabal`

From the source directory, you can run:

```
cabal build
```

#### Using `stack`

```
stack build
```

#### Using `haskell compilers`

To use **`ghc`**, or other **Haskell Compilers** from the source directory, run:

> [!CAUTION]
> This **will create build artifacts** in the source directory that you may
> **have to manually remove**.

> [!NOTE]
> The **sources** are located in the **src** directory.

```
cd src
ghc -g -O fibonacci.hs -o haskell-fibonacci
```

#### Using `buck2`

To use **`buck2`** from the source directory, run one of the following:

```
buck2 build :main
```
```
buck2 build :haskell-fibonacci
```

## Running

The execution of this program can be seamlessly handled using automated build tools like **`cabal`** and **`stack`**, or manually with **`ghc`**, or other **Haskell Compilers**. You can run the program from either the root directory or the source directory.

### Root Directory

#### Using `cabal`

From the root directory:

```
cabal run haskell-fibonacci
```

#### Using `stack`

From the root directory, run one of the following:

```
stack run haskell-fibonacci
```
```
stack exec haskell-fibonacci
```

#### Using `haskell interpreter`

To use **`runghc`** or **`runhaskell`** to run it directly from the root directory, run one of the following:

```
runghc haskell/fibonacci/src/fibonacci.hs
```
```
runhaskell haskell/fibonacci/src/fibonacci.hs
```

#### Using `buck2`

To use **`buck2`** from the root directory, run one of the following:

```
buck2 run :haskell-fibonacci
```
```
buck2 run haskell/fibonacci:main
```

### Source Directory _(optional)_

#### Using `cabal`

From the source directory, you can run:

```
cabal run
```

#### Using `stack`

From the source directory, you can run:

```
stack run
```

#### Using `haskell compilers`

If you used **`ghc`** or other **Haskell Compilers** for building the program:

```
cd src
./haskell-fibonacci
```

#### Using `haskell interpreter`

To use **`runghc`** or **`runhaskell`** to run it directly from source directory, run one of the following:

```
runghc src/fibonacci.hs
```
```
runhaskell src/fibonacci.hs
```

#### Using `buck2`

To use **`buck2`** from the source directory, run one of the following:

```
buck2 run :main
```
```
buck2 run :haskell-fibonacci
```

## License

Licensed under [**MIT License**](LICENSE).
