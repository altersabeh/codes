# `Haskell/Greeter`

This is a **Greeter** program written in **Haskell**.

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
  stack build haskell-greeter
  ```
* ```
  cabal build haskell-greeter
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
  ghc greeter.hs -o haskell-greeter
  ```

## Running

### Root Directory

From the root directory run one of the following:

* ```
  stack run haskell-greeter
  ```
* ```
  stack exec haskell-greeter
  ```
* ```
  cabal run haskell-greeter
  ```

You can also use `runhaskell` to run it directly: _**(optional)**_

* ```
  runhaskell haskell/greeter/greeter.hs
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
  ./haskell-greeter
  ```

You can also use `runhaskell` to run it directly:

* ```
  runhaskell greeter.hs
  ```

## License

Licensed under [**MIT License**](LICENSE).
