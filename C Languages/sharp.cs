// This is a C Sharp comment

var a = 1; // var declares any variable. The semi colon is required for nearly all statements, or errors will be present
var b = "2"; // This var has a string
var c = 3.0; // This var has a float (decimal value)
var d = true; // This var has a boolean value
Console.WriteLine(d); // Prints d
Console.WriteLine(b); // Prints b
/* 
placeholder -> {0}
This (the {0}) is an 'index placeholder', essentially a regular placeholder value. This will return an error however and should not be used with variables unless used like on line 14 and 15
*/
Console.Write(a + c); // This prints out data, in this case it adds a and c. 

var e = "world"; // This assigns e with "world"
Console.WriteLine("Hello {0}!", e); // This replaces the value of {0} with e. You can add more variables sequentially with commas

if (c > a) // This compares a and c, does not need a semi colon
{ // Prints out "c is greater!" if c is greater
    Console.WriteLine("c is greater!");
}
else if (a > c) // Compares a and c again
{ // Prints out "a is greater!" if a is greater
    Console.WriteLine("a is greater!");
}
else // Does not compare anything, this should be used if you want code to run without a condition if the intial one was false
{ // This returns if the values are equals or have no value
    Console.WriteLine("They are equal, or have no value!");
}