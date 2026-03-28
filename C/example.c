// This is a C comment
#include <stdio.h> // Library import

int main(void) { /*
    main() is the entry point of a C program
    int is the return type of main
    void means main takes no arguments
    */
    // A minimal C example
    printf("Hello, C!\n"); // Prints out "Hello, C!" with a line break (\n)

    //

    int a = 4; // Declares an integer
    int b = 2; // Declares another integer
    printf("Sum: %d\n", a + b); // Prints the sum of a and b

    //

    if (a > b) { // A simple if statement
        printf("a is greater than b\n"); // Prints if the condition is true
    } else {
        printf("a is not greater than b\n"); // Prints if the condition is false
    }

    //

    for (int i = 0; i < 3; i++) { // A for loop from 0 to 2
        printf("Loop i: %d\n", i); // Prints the current index
    }

    //

    int nums[] = {1, 2, 3}; // Declares an array of integers
    printf("First element: %d\n", nums[0]); // Accesses the first element

    return 0; // Returns 0
}
