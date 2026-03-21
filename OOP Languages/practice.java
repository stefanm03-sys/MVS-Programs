/* Runtime
javac "Obj Oriented\practice.java"
java -cp "Obj Oriented" practice
*/

import java.io.Console;

import javax.swing.JOptionPane;

public class practice { // This is a class named "practice"
    public static void main(String[] args) { // This is the main method, which is the entry point of the  program
        // public means it can be accessed from anywhere, static means it belongs to the
        // class rather than an instance, void means it does not return any value,
        // and String[] args is an array of strings that can be used to pass
        // command-line arguments
        System.out.println("Hello, World!"); // This line prints "Hello, World!" to the console. System.out is a
        // standard output stream, and println is a method that prints the
        // specified string followed by a new line
        while (true) { // This is an infinite loop that will run indefinitely
            System.out.println("This will be printed forever."); // This line prints "This will be printed forever." to the console
            break; // This line breaks out of the loop, so the loop will only run once
        }
        double num1 = 5.5; // This line declares a variable named num1 to be doubled and assigns it the value of 5.5

        System.out.println(num1); // This line prints the value of num1 (5.5) to the console
        String input = JOptionPane.showInputDialog("Enter any string: "); // This line displays a prompt asking the user to enter a string, and stores the input in the variable 'input' using the JOPtionPane method from the javax.swing package
        System.out.println("You entered: " + input); // This line prints the string entered by the user to the console
        
        Console console = System.console(); // This line creates a Console object named 'console' that can be used to read input from the console
        console.readLine("Enter a string: "); // This is the generic way to read inputs, the program waits for the user to press Enter before closing the console window

        if (4 > 2) { // A generic if statement that checks if 4 is greater than 2, which is true
            System.out.println("4 is greater than 2."); // Prints "4 is greater than 2." to the console if the condition is true
        } else { // This is the else block that will execute if the condition in the if statement is false
            System.out.println("4 is not greater than 2."); // Prints "4 is not greater than 2." to the console if the condition is false

            

        }
    }
}






