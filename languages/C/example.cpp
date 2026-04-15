// This is a C Plus Plus comment

#include <iostream>
#include <vector>
#include <fstream>

int modulus(int a, int b) { // Define a simple division function that returns remainder. Should be outside of main() to avoid errors
    std::cout << "Dividing.." << std::endl; // std::cout << str << prints out a string, << std::endl; ends the line

    if (a == 0 || b == 0) { // Prevents division by zero
        std::cout << "Division by zero! Cannot run." << std::endl;
        return 0; // Return a value
    } else { // Otherwise, run like normal
        int result = a % b; // Calculates remainder. a / b works by default, and it returns the remainder
        std::cout << "Calculated! Remainder is: " << result << std::endl;
        return result;
    }
}

int main() { // Define a main method inside the program. int means the program returns numerics values if it runs or fails
    // This line prints "Hello, World!" to the console
    std::cout << "Hello, World!" << std::endl; // std::endl writes a new line

    //

    int a = 5; // Declares an integer
    int b = 3; // Declares another integer
    std::cout << "Sum: " << (a + b) << std::endl; // Print this

    double c = 2.0; // Declares a decimal
    std::cout << "C is: " << c << std::endl; // Print a decimal

    char d = 'd'; // Define a singular character
    std::cout << d << std::endl; // Print the char

    bool e = true; // Boolean value
    std::cout << "e is: " << e << std::endl; // Prints 1 for true

    auto f = "4"; // Define the value of f automatically
    std::cout << "f is: " << f << std::endl;

    //

    int modResult = modulus(10, 3); // Call the shiny new function from earlier
    std::cout << "Result from modulus(): " << modResult << std::endl; // The modulus returns the remainder. 10 / 3 is 3, and the remaining is 1 (your answer)

    if (a > b) { // A simple condition
        std::cout << "a is greater than b" << std::endl; // Prints if true
    } else { // If the primary condition is false, use this
        std::cout << "a is not greater than b" << std::endl; // Prints if false
    }

    //

    for (int i = 0; i < 3; i++) { // A for loop from 0 to 2
        // i is the index placeholder to use, i < 3 is a condition, and i++ increments
        std::cout << "Loop i: " << i << std::endl; // Prints the current index
    }

    int i = 0;
    while (i < 5) { // Basic loop that runs while true
        std::cout << "Looped!" << std::endl;
        i++;
        std::cout << "i is:" << i << std::endl;
    }

    //

    std::vector<int> nums = {1, 2, 3}; // Declares a vector of integers
    std::cout << "First element: " << nums[0] << std::endl; // Accesses the first element

    char items[2] = {'a', 'b'}; // Declare an array of characters. The [2] indicates the generic numeric value of items
    std::cout << "Char One: " << items[0] << std::endl; // Print the index value of the items (first one is always 0)

    /*
    This point on are server and OS functions
    */

    std::ofstream out("demo.txt"); // Write to a file
    out << "Hello from C++ file I/O\n";
    out.close();
    // Close the file using out.close();

    std::ifstream in("demo.txt"); // Read from a file
    std::string line;
    if (std::getline(in, line)) { // Find a line and read it
        std::cout << "Read line: " << line << std::endl;
    }
    in.close();
    // Exit using in.close()

    return 0; // Successful exit status
}
