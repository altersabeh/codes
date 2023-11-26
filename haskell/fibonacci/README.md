# `Haskell/Fibonacci`

This is a **Fibonacci** program written in **Haskell**.

## Prerequisite

To run and build this program you need to install:

* [**Haskell GHCup**](https://www.haskell.org/ghcup/install/)
  * `ghc`
  * `stack`
  * `cabal`
  * `runhaskell`

## Building

### Root Directory

From the root directory run one of the following:

* ```
  stack build haskell-fibonacci
  ```
* ```
  cabal build haskell-fibonacci
  ```

### Source Directory _(optional)_

From the source directory you can run:

* ```
  stack build
  ```
* ```
  cabal build
  ```

You can also use `ghc` from the source directory:

* ```
  ghc fibonacci.hs -o haskell-fibonacci
  ```

## Running

### Root Directory

From the root directory run one of the following:

* ```
  stack run haskell-fibonacci
  ```
* ```
  stack exec haskell-fibonacci
  ```
* ```
  cabal run haskell-fibonacci
  ```

You can also use `runhaskell` to run it directly: _**(optional)**_

* ```
  runhaskell haskell/fibonacci/fibonacci.hs
  ```

### Source Directory _(optional)_

From the source directory you can run:

* ```
  stack run
  ```
* ```
  cabal run
  ```

If you used `ghc` for building:

* ```
  ./haskell-fibonacci
  ```

You can also use `runhaskell` to run it directly:

* ```
  runhaskell fibonacci.hs
  ```

## License

Licensed under [**MIT License**](https://github.com/altersabeh/codes/blob/main/LICENSE).
