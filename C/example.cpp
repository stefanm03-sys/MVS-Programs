// This is a C Plus Plus comment

#include <iostream>
#include <vector>
int main() {
    // This line prints "Hello, World!" to the console
    std::cout << "Hello, World!" << std::endl; // std::endl writes a newline and flushes the stream

    //

    int a = 5; // Declares an integer
    int b = 3; // Declares another integer
    std::cout << "Sum: " << (a + b) << std::endl; // Prints the sum

    //

    if (a > b) { // A simple if statement
        std::cout << "a is greater than b" << std::endl; // Prints if true
    } else {
        std::cout << "a is not greater than b" << std::endl; // Prints if false
    }

    //

    for (int i = 0; i < 3; i++) { // A for loop from 0 to 2
        std::cout << "Loop i: " << i << std::endl; // Prints the current index
    }

    //

    std::vector<int> nums = {1, 2, 3}; // Declares a vector of integers
    std::cout << "First element: " << nums[0] << std::endl; // Accesses the first element

    return 0;
}
