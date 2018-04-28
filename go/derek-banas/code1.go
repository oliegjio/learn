package main // This is `main` package.

import "fmt" // Import package providing formatting for both input and output.

func main() {

	/////////////////////////////
	// PRINTING AND VARIABLES:
	/////////////////////////////
	
	fmt.Println("Hello, world!")
	
	var age int = 40

	var favouriteNumber float64 = 1.6180339

	randomNumber := 1 // Infere type.
	
	fmt.Println(age, favouriteNumber, randomNumber)

	var numberOne = 1.000
	var numberTwo = .9999

	fmt.Println(numberOne - numberTwo)

	fmt.Println(5 % 2) // Remainder of division, OUTPUT: 1.

	const pi float64 = 3.14159

	var (
		varA = 2
		varB = 3
	)

	fmt.Println(varA, varB)

	var myName string = "John Doe"

	fmt.Println(len(myName))

	fmt.Println(myName + " is a robot")

	var isOver40 bool = true

	// %f - Output float.
	// %.3f - Output float with 3 decimal places.
	fmt.Printf("%.3f \n", pi)

	// %F - Print data type of the variable passed.
	fmt.Printf("%F \n", isOver40)

	// %t - Print with auto infere type.
	fmt.Printf("%t \n", isOver40)

	// %d - Print integer.
	fmt.Printf("%d \n", 100)

	// %b - Print binary.
	fmt.Printf("%b \n", 100)

	// %c - Print character.
	fmt.Printf("%c \n", 44)

	// %x - Print HEX code.
	fmt.Printf("%x \n", 100)

	// %e - Print with scientific notation.
	fmt.Printf("%e \n", pi)

	//////////////////////////////////
	// LOOPS AND CONDITIONALS:
	//////////////////////////////////
	
	i := 1
	for i <= 10 {
		fmt.Println(i)
		i++
	}

	for j := 0; j < 5; j++ {
		fmt.Println(j)
	}

	yourAge := 18

	if yourAge >= 16 {
		fmt.Println("You can drive")
	} else if yourAge >= 18 {
		fmt.Println("You can vote")
	} else {
		fmt.Println("You can have fun")
	}

	switch yourAge {
		case 16: fmt.Println("Go dirve")
		case 18: fmt.Println("Go vote")
		default: fmt.Println("Go have fun")
	}

	////////////////////////////////
	// CONTAINERS:
	////////////////////////////////

	var favouriteNumbers[5] float64
	favouriteNumbers[0] = 163
	favouriteNumbers[1] = 723423
	favouriteNumbers[2] = 23
	favouriteNumbers[3] = 3.13123
	favouriteNumbers[4] = 1.123
	
	fmt.Println(favouriteNumbers[4])

	someNumbers := [5] int {1, 2, 3, 4, 5}

	for i, value := range someNumbers {
		fmt.Println(value, i)
	}

	for _, value := range someNumbers {
		fmt.Println(value)
	}

	numbersSlice := [] int {5, 4, 3, 2, 1}
	numbersSlice2 := numbersSlice[3:5] // From 3rd to 5th index.
	// First index is including, second index is excluding.

	fmt.Println(numbersSlice2[0]) // OUTPUT: 2.
	fmt.Println(numbersSlice2[1]) // OUTPUT: 1.
	fmt.Println(numbersSlice[:2]) // From beginning to 2th index. OUTPUT: [5 4].
	fmt.Println(numbersSlice[2:]) // From 2th to end. OUTPUT: [3 2 1].

	// First argument - type of slice you want.
	// Second argument - provide default value for first N.
	// Third argument - Maximum size of slice.
	anotherSlice := make([] int, 5, 10)

	// Copy from X to Y.
	copy(anotherSlice, numbersSlice)

	fmt.Println(anotherSlice) // OUTPUT: [5 4 3 2 1].
}
