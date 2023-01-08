package main

import "fmt"

func main() {
    // Declare variables of various types
    var i int = 42
    var f float64 = 3.14
    var b bool = true
    var s string = "Hello, world!"
    var c complex128 = 1 + 2i

    // Print the values of the variables
    fmt.Println(i)
    fmt.Println(f)
    fmt.Println(b)
    fmt.Println(s)
    fmt.Println(c)
}

package main

import "fmt"

func main() {
    // Declare an array of integers
    var a [3]int = [3]int{1, 2, 3}

    // Declare a slice of integers
    var s []int = []int{4, 5, 6}

    // Declare a map of strings to integers
    var m map[string]int = map[string]int{
        "one": 1,
        "two": 2,
        "three": 3,
    }

    // Print the values of the array, slice, and map
    fmt.Println(a)
    fmt.Println(s)
    fmt.Println(m)
}

package main

import "fmt"

func main() {
    // Keywords
    var chan chan int // channel keyword
    var defer func() // defer keyword
    var fallthrough // fallthrough keyword
    var func func() // func keyword
    var interface interface{} // interface keyword
    var select select {} // select keyword
    var case chan // case keyword
    var go go func() {} // go keyword
    var map map[string]int // map keyword
    var struct struct{} // struct keyword
    var type type // type keyword
    var var var // var keyword

    // Conditionals
    var x int = 42
    if x > 0 {
        fmt.Println("x is positive")
    } else if x < 0 {
        fmt.Println("x is negative")
    } else {
        fmt.Println("x is zero")
    }

    // Control flow
    switch x {
    case 1:
        fmt.Println("x is 1")
    case 2:
        fmt.Println("x is 2")
    default:
        fmt.Println("x is something else")
    }

    // Loops
    for i := 0; i < 10; i++ {
        fmt.Println(i)
    }

    var i int
    for i < 10 {
        fmt.Println(i)
        i++
    }
}

package main

import "fmt"

// A simple function that takes two integers and returns their sum
func add(x int, y int) int {
    return x + y
}

// A function with a named return value
func divMod(x int, y int) (quotient int, remainder int) {
    quotient = x / y
    remainder = x % y
    return
}

// A struct representing a person
type Person struct {
    Name string
    Age int
}

// A method on the Person struct that returns a string representation of the person
func (p Person) String() string {
    return fmt.Sprintf("%s is %d years old", p.Name, p.Age)
}

// An enumeration of colors
type Color int

const (
    Red Color = iota
    Green
    Blue
)

func main() {
    // Call the add function and print the result
    result := add(1, 2)
    fmt.Println(result)

    // Call the divMod function and print the results
    quotient, remainder := divMod(10, 3)
    fmt.Println(quotient)
    fmt.Println(remainder)

    // Create a new Person struct and print it
    p := Person{Name: "John", Age: 30}
    fmt.Println(p)

    // Access the enum values
    fmt.Println(Red)
    fmt.Println(Green)
    fmt.Println(Blue)
}

type Employee struct {
    Person
    Salary int
}


// The add function takes two integers and returns their sum.
func add(x int, y int) int {
    return x + y
}

package main

import "fmt"
import "math"

// A struct representing a point in 2D space
type Point struct {
    X float64
    Y float64
}

// A method on the Point struct that calculates the distance from the point to the origin
func (p Point) DistanceToOrigin() float64 {
    return math.Sqrt(p.X*p.X + p.Y*p.Y)
}

func main() {
    // Create a new Point struct and print its distance from the origin
    p := Point{X: 3, Y: 4}
    fmt.Println(p.DistanceToOrigin())

    // Use a built-in function to find the maximum of two integers
    fmt.Println(math.Max(1, 2))
}

package main

import (
    "fmt"
    "io/ioutil"
    "log"
    "os"
    "strconv"
)

func main() {
    // Read a file and print its contents
    contents, err := ioutil.ReadFile("input.txt")
    if err != nil {
        log.Fatal(err)
    }
    fmt.Println(string(contents))

    // Parse a string as an integer and handle the error if it fails
    x, err := strconv.Atoi("not an integer")
    if err != nil {
        fmt.Println(err)
    } else {
        fmt.Println(x)
    }

    // Create a new file and write to it
    f, err := os.Create("output.txt")
    if err != nil {
        log.Fatal(err)
    }
    defer f.Close()
    _, err = f.WriteString("Hello, world!")
    if err != nil {
        log.Fatal(err)
    }
}

package main

import (
    "fmt"
    "github.com/pkg/errors"
)

func main() {
    // Use the errors package to wrap an error
    err := errors.New("something went wrong")
    wrappedErr := errors.Wrap(err, "error occurred while doing something")
    fmt.Println(wrappedErr)
}
