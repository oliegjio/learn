package main

import "fmt"
import "os"

func main() {
    // Program name is always the first argument.
    cmd := os.Args[0]

    fmt.Printf("Program name %s\n", cmd)
}