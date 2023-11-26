# `Haskell/Hello`

This is a **Hello World** program written in **Haskell**.

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
  stack build haskell-hello
  ```
* ```
  cabal build haskell-hello
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
  ghc hello.hs -o haskell-hello
  ```

## Running

### Root Directory

From the root directory run one of the following:

* ```
  stack run haskell-hello
  ```
* ```
  stack exec haskell-hello
  ```
* ```
  cabal run haskell-hello
  ```

You can also use `runhaskell` to run it directly: _**(optional)**_

* ```
  runhaskell haskell/hello/hello.hs
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
  ./haskell-hello
  ```

You can also use `runhaskell` to run it directly:

* ```
  runhaskell hello.hs
  ```

## License

Licensed under [**MIT License**](https://github.com/altersabeh/codes/blob/main/LICENSE).
