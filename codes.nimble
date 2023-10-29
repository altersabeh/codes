# Package

version     = "1.0.0"
author      = "altersabeh"
description = "A Fibonacci Program Written in Different Languages"
license     = "MIT"

binDir = "bin/nim"
srcDir = "nim"

namedBin["hello/hello"]
  = "nim-hello"

# Dependencies

requires "nim >= 2.0.0"
