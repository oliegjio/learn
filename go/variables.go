package main

import "fmt"

// Declare 3 variables of type 'int':
var i, j, k int


// Declare and assign values to multiple variables:
var a, b, c = 3, 4, "foo"

const LENGTH int = 15

func main() {
    fmt.Printf("A, B, C values: %d, %d, %s\n", a, b, c)
    fmt.Printf("Length: %d\n", LENGTH)
}