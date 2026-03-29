// This is a F# comment
/*
This should be a multi line comment


let name = "World" // Declares a variable
printfn "Hello, %s!" name // This prints a line using "printfn" and avoiding parantheses

let add a b = a + b // This defines a function "add" that uses a and b for the parameters in a horizontal declaration
add 5, 2 // Should call the function and return 7

let numbers = [1; 2; 3; 4] // Defines an array of numbers
let evens = numbers |> List.filter (fun n -> n % 2 = 0) // This filters the list of numbers to only include even numbers using a lambda function. The lambda function takes a number n and checks if it is even by using the modulus operator. The result is stored in the variable "evens"
printfn "Evens: %A" evens

let describe n = // This defines a variable with conditions, not exactly a function but it can be used as one. It takes a number n and returns a string describing whether it is positive, zero, or negative
    if n > 0 then "positive" // If n is greater than 0, it returns "positive"
    elif n = 0 then "zero" // If n is equal to 0, return "zero"
    else "negative" // Checks if the value of n is not greater or equal, and prints "negative"

printfn "-5 is %s" (describe -5) // This..
