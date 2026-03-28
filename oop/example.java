
/*
This is a multiline comment. The code between the slash and asterisk is not executed
*/

import java.io.Console;
import javax.swing.JOptionPane;

public class practice { // This is a class named "practice"
    public static void main(String[] args) { // This is the main method, which is the entry point of the program
        /* public means it can be accessed from anywhere
        static means it belongs to the class rather than an instance
        void means it does not return any value
        String[] args is an array of strings that can be used to pass command-line arguments
        */
        char a = 'a'; // Declares a variable with a single character. Uses single quotes
        double b = 5.5; // This line declares a variable named b and assigns it a decimal
        int c = 3; // Assigns a number to c
        boolean d = true; // Puts a boolean value in d
        System.out.println(b); // This line prints the value of b (5.5) to the console

        System.out.println("Hello, World!"); // This line prints "Hello, World!" to the console. System.out is a standard output stream, and println is a method that prints the specified string followed by a new line
        while (true) { // This is an infinite loop unless it is broken out of
            System.out.println("This will be printed forever."); // This line prints "This will be printed forever." to the console
            break; // This line breaks out of the loop, so the loop will only run once instead of forever like the string claims
        }

        //

        String input = JOptionPane.showInputDialog("Enter any string: "); // This line displays a prompt asking the user to enter a string, and stores the input in the variable 'input' using the JOPtionPane method from the javax.swing package
        System.out.println("You entered: " + input); // This line prints the string entered by the user to the console
        
        Console console = System.console(); // This line creates a Console object named 'console' that can be used to read input from the console
        if (console != null) {
            console.readLine("Enter a string: "); // This is the generic way to read inputs, the program waits for the user to press Enter before closing the console window
        }

        if (4 > 2) { // A generic if statement that checks if 4 is greater than 2, which is true
            System.out.println("4 is greater than 2."); // Prints "4 is greater than 2." to the console if the condition is true
        } else { // This is the else block that will execute if the condition in the if statement is false
            System.out.println("4 is not greater than 2."); // Prints "4 is not greater than 2." to the console if the condition is false
        }
    }
}




