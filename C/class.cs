// This is a C Sharp comment
using System; // Imports namespace

/* 
Classes are normally what you should use for programs in C Sharp
Keeping everything inside a class is a common structure
When making apps and games, classes are required
*/

class MyProgram // Creates a class named "MyProgram"
{
    static void Main() /*
    static indicates that a method belongs to a class instead of objects
    void indicates the method returns no value
    Main() is the main entry point of the program
    */
    {
        Console.WriteLine("Hello program!");
        static int Multiply(int a, int b)
        {
            /*
            static here defines a function
            int defines the data type to use
            From there, you make a function like the example above with your parameters
            */
            Console.WriteLine($"Product Of Values: {a * b}");
            return a * b;
        } 
        Multiply(1, 2); // Calls your function

        // Polymorphism demo using Animal base class
        Animal[] zoo = { new Dog(), new Cat(), new Animal() };
        foreach (var creature in zoo)
        {
            creature.Speak(); // Calls the overridden Speak on each
        }
    }
}

public class Greeter
{
    // This is a class named Greeter, it can be used outside this file
    public void Greet(string name)
    {
        Console.WriteLine("Hello user! Should I call you by sonething?");
        var enteredName = Console.ReadLine();
        Console.WriteLine($"Ah, hello {enteredName}!");
    }
}

// Inheritance and polymorphism example
public class Animal
{
    public virtual void Speak() // virtual so children can override
    {
        Console.WriteLine("Some generic animal sound.");
    }
}

public class Dog : Animal
{
    public override void Speak() // Overrides base behavior
    {
        Console.WriteLine("Dog says: Woof!");
    }
}

public class Cat : Animal
{
    public override void Speak()
    {
        Console.WriteLine("Cat says: Meow!");
    }
}
