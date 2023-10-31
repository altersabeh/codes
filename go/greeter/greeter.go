package main

import (
  "bufio"
  "fmt"
  "os"
  "strings"
)

type InputHandler struct{}

func (inputHandler InputHandler) getUserName() string {
  fmt.Print("Enter your name: ")
  reader := bufio.NewReader(os.Stdin)
  userInput, _ := reader.ReadString('\n')

  // Remove leading and trailing whitespace
  userInput = strings.TrimSpace(userInput)

  return userInput
}

type Greeter struct {
  username string
}

func NewGreeter(name string) *Greeter {
  return &Greeter{username: name}
}

func (greeter *Greeter) Greet() {
  fmt.Printf("Hello, %s!\n", greeter.username)
  fmt.Println("Greetings from Go!")
}

func main() {
  name := InputHandler{}.getUserName()
  greeter := NewGreeter(name)
  greeter.Greet()
}
