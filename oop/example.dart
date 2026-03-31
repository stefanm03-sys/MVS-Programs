// This is a Dart comment
/*
This is a multi line comment
*/

int a = 4; // Assigns an integer value
double b = 2.5 // Assigns a decimal value
String c = "Sup."; // Assigns a string
bool d = true; // Assigns either boolean value
e = 1; // Basic assignment without an inferred data assignmeng
var f = "Dart"; // Static type inference, can change but only in the same data type
dynamic g = 3.14; // Dynamic variables can change data types
print(a + b); // The easiest printing function, similar to other programming languages. Here, it adds a and b

//

if (a > b) { // A basic condition to run if a is larger than b
   print("a is larger!");
} else if (b > a) { // A failsafe condition to run if the original is false
   print("b is larger?");
} else { // Failsafe to run if all other conditions are false
    print("a and b are equal, or a negative number was used!");
}

//

int add(a, b) { // Basic function to add two values, explicitly defined as an integer function
    int(a); // Change the data type to an integer
    int(b); // Also change the data to an integer
    print("Calcuated! Returned:", a + b);
}
add(9, 10); // Call the shiny new function and return the value of both parameters


String concat(String a, String b) { // Less simple function to merge strings, only accepts strings as argumenets using "String a" to define the accepted data
    String(a); // Change the data to a string
    String(b);
    print("Strings merged! Returned:" + a + b); // Returns the strings using concatenation (does not work for other data unless used with commmas)

}
concat("Hello, ", "world!");

void printuser({required String name, int pass}) { // A function with a required parameter. void means it does not return a value, the braces indicate named parameters
// Named paramaterd are defined like in a way like so, argument: value
// required indicates a mandatory operation. Here, it requires a string parameter
// null is a placeholder for empty values. None is also a placeholder
    print("Hello ${name}!") // Use ${} in strings to substitute a variable or value
    if pass == null {
        print("No password provided.");
    } else {
        print("Password stored!");
    }
}
printuser(name: "yourname") // No password
printuser(name: "yourusername", pass: 12345) // With extra paramater

// 

List<String> list_a = ["hello", "world", "dart", "google"]; // This is an array with only strings. Change "strings" to another data type for specified items
print(list_a[0]); // Prints the first item (0th index count, but 1st generically)

List<bool> list_b = [true, false]; // An array with only boolean values
print(list_b[1]); // Prints the second item of the list

// 

class User { // Creates a class named "user"
    String username
    double height

    User(this.username, this.height) // Constructs the properties of said class

    User.unknown() : username = "Unknown", height = 0.0 // Define the properties with basic values to be changed

    void ask() { // This is a method in your class
        String username = input("Hello! Provide a username: ")
        double height = input("Provide a height in cm (put any value): ")
        return "Welcome $username! Your height is $height cm!"
    }

    void intro() {
        print("Thank you for providing username or height!")
    }
}

abstract class Shape { // abstract class cannot be instantiated directly
    double area(); // abstract method that must be overridden by another
    @override
    String toString() => "Shape (abstract)"; // toString comes from the Object class method
}

class Rectangle extends Shape { // Creates a subclass like before
    double width;
    double height;

    Rectangle(this.width, this.height); // Primary construction

    @override
    double area() => width * height; // Implements the abstract area()

    @override
    String toString() => "Rectangle ${width}x${height}"; // Override Object.toString
}

class Square extends Rectangle { // extends Rectangle
    Square(double side) : super(side, side); // Super calls the parent constructor
}

// Interface-style class to implement in your code
class Describable { // In Dart, any class can be an interface thats describable
    String describe() => "Something describable here";
}

mixin Logger { // mixin allows reusable code without external inheritance
    void log(String message) { // method to reuse
        print("[LOG] $message");
    }
}

class Circle extends Shape with Logger implements Describable { // extends Shape, mixes Logger, and implements Describable
    double radius;
    Circle(this.radius);

    @override
    double area() => 3.14159 * radius * radius; // Implements the abstract class

    @override
    String describe() => "Circle of radius $radius"; // Describes from the Describad
}

void main() { // Calls a basic main method for a process
    var h = null;
    h.ask(); // Calls the method from your class

    var i = User("youruser", 10.0) // Assigns values using a class
    h.intro()
}
