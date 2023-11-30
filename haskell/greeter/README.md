 # `Haskell/Greeter`

This is a **Greeter** program written in **Haskell**.

## Prerequisite

To run and build this program you need to have the following:

<div align="center">

| Name | Commands | Required | Recommended | Optional | Notes |
|:----:|:--------:|:--------:|:-----------:|:--------:|:-----:|
| [**Glasgow Haskell Compiler**](https://www.haskell.org/ghc/distribution_packages.html) | **`ghc`**<br>**`runhaskell`**<br>**`runghc`**` | &#9989; | &#9989; | &#10062; | **`ghcup install ghc`**<br>or<br>**`sudo apt install ghc`** |
| [**Haskell Cabal**](https://www.haskell.org/cabal/download.html) | **`cabal`** | &#9989; | &#9989; | &#10062; | **`ghcup install cabal`**<br>or<br>**`sudo apt install cabal-install`** |
| [**Haskell Stack**](https://releases.llvm.org/download.html) | **`stack`** | &#10062; | &#9989; | &#9989; | **`ghcup install stack`**<br>or<br>**`sudo apt install haskell-stack`** |

</div>

## Building

This program is designed to be built automatically using tools such as **`cabal`** and **`stack`**, or manually with **`ghc`**, or other **Haskell Compilers**. You can initiate the build process either from the root directory or the source directory.

### Root Directory

#### Using `cabal`

From the root directory:

```
cabal build haskell-greeter
```

#### Using `stack`

From the root directory:

```
stack build haskell-greeter
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

To use **`ghc`**, or other **Haskell Compilers** from the source directory, run one of the following:

> [!CAUTION]
> This **will create build artifacts** in the source directory that you may **have to manually remove**.

> [!NOTE]
> The **sources** are located in the **src** directory.


You can also use `ghc` from the source directory:

```
cd src
ghc greeter.hs -o haskell-greeter
```

## Running

The execution of this program can be seamlessly handled using automated build tools like **`cabal`** and **`stack`**, or manually with **`ghc`**, or other **Haskell Compilers**. You can run the program from either the root directory or the source directory.

### Root Directory

#### Using `cabal`

From the root directory::

```
cabal run haskell-greeter
```

#### Using `stack`

From the root directory, run one of the following:

```
stack run haskell-greeter
```
```
stack exec haskell-greeter
```

#### Using `haskell interpreter`

To use `runghc` or `runhaskell` to run it directly from the root directory, run one of the following:

```
runghc haskell/greeter/src/greeter.hs
```
```
runhaskell haskell/greeter/src/greeter.hs
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

If you used `ghc` or other **Haskell Compilers** for building the program:

```
cd src
./haskell-greeter
```

#### Using `haskell interpreter`

You can also use `runhaskell` to run it directly:

To use `runghc` or `runhaskell` to run it directly from source directory, run one of the following:

```
runghc src/greeter.hs
```
```
runhaskell src/greeter.hs
```

## License

Licensed under [**MIT License**](LICENSE).
