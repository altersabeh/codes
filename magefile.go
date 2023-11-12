//go:build mage
// +build mage

package main

import (
  "fmt"
  "os"
  "os/exec"
)

var Default = Message

var Aliases = map[string]interface{}{
  "go-hello": BuildHello,
  "go-greeter": BuildGreeter,
  "go-fibonacci": BuildFibonacci,
}

// Build hello program in Go
func BuildHello() error {
  return buildProgram("go-hello")
}

// Build greeter program in Go
func BuildGreeter() error {
  return buildProgram("go-greeter")
}

// Build fibonacci program in Go
func BuildFibonacci() error {
  return buildProgram("go-fibonacci")
}

// build all target programs
func Build() {
  fmt.Println("Building all programs...")
  BuildFibonacci()
  BuildGreeter()
  BuildHello()
}

// clean the build directory
func Clean() {
  fmt.Println("Cleaning build directory...")
  os.RemoveAll("dist/go")
}

func Message() {
  fmt.Println("Specify the target to build !")
}

func buildProgram(program string) error {
  fmt.Printf("Building %s program...\n", program)
  cmd := exec.Command("go", "build", "-o", fmt.Sprintf("dist/go/%s", program), program)
  fmt.Printf("Built %s successfully in dist/go directory\n", program)
  return cmd.Run()
}
