// This is a C Sharp comment
using System; // Imports namespace

// Server
using System.Net;
using System.Net.Sockets;
using System.Text;
using System.IO;


/*
The code below will not run because it had no program entry point. It is not supposed to run, and only demonstrates syntax and structure of C sharp.
*/

var a = 1; // var lets the compiler infer the variable type. The semi colon is required for nearly all statements, or errors will be present
var b = "2"; // This var has a string
var c = 3.0; // This var has a float (decimal value)
var d = true; // This var has a boolean value
Console.WriteLine(d); // Prints d
Console.WriteLine(b); // Prints b

// These declare specific data
int e = 2; // Declares an integer
double f = 10.4; // Declares a decimal
char g = 'S'; // Stores a string, but only one character (letter, num, etc). This uses single quotations
string h = "Sup?"; // Stores a full string
bool i = true; // Declares the only two boolean values

// 

int j = 9, k = 10; // Declare numerous values at once
Console.WriteLine(j * k); // Multiplying, returns product
Console.WriteLine(j / k); // Division, returns quotient
Console.WriteLine(k % j); // Returns the remaining value of division instead of the quotient

//

int[] nums = { 1, 2, 3 }; // Creates an array of integers
Console.WriteLine(nums[0]); // Prints the first element of the array

//

for (int index = 0; index < nums.Length; index++) // A for loop over the array indexes
{
    Console.WriteLine($"Index {index}: {nums[index]}"); // Prints index and value
}

/* 
placeholder -> {0}
This (the {0}) is an 'index placeholder' used to insert variables into a formatted string
*/

var l = "world"; // This assigns l with "world"
Console.WriteLine("Hello {0}!", l); // This replaces the value of {0} with l. You can add more variables sequentially with commas

//

if (c > a) // This compares a and c, does not need a semi colon
{ // Prints out "c is greater!" if c is greater. The opening brace goes below the condition
    Console.WriteLine("c is greater!");
} // The closing brace goes here to close the condition
else if (a > c) // Compares a and c again
{ // Prints out "a is greater!" if a is greater
    Console.WriteLine("a is greater!");
}
else // Does not compare anything, this should be used if you want code to run without a condition if the intial one was false
{ // This returns if the values are equals or have no value
    Console.WriteLine("They are equal, or have no value!");
}

// 

for (var i = 0; i < 10; i++)  /*
 This loop requires i to have a beginning value (ex. 0)
 It requires a condition, such as i < 10 to end it automatically
 i++ increments the value of i, i-- decrements it
 */
{
   Console.WriteLine($"Current index value: {i}"); 
}

var m = 5;
var n = 3;
while (m > n) // While loops iterate if the condition is true for the loop
{
    Console.WriteLine($"Incrementing n.. {n}");
    int n = n++; // This defines n locally
    if (n > 5)
    {
        Console.WriteLine($"n exceeded value of m! n is: {n}");
        break;
    }
} 
