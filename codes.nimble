# Package

version     = "1.0.0"
author      = "altersabeh"
description = "Repository for My Codes"
license     = "MIT"

binDir = "bin/nim"
srcDir = "nim"

namedBin["hello/hello"]
  = "nim-hello"

# Dependencies

requires "nim >= 2.0.0"
