#!/bin/bash

# This is a bash (shell) comment

# bash is for Command Line Interfaces, and is rather complex

echo "Hey man!" # Prints "Hey man!" echo is the keyword used for printing out data
a=1 # Variables should not have spaces when being defined
b="2"
echo a # Prints a
echo b # Prints b

echo "$a + $b" # This substitutes $a and $b, placeholders, with the actual values

# 

read -p "Enter a string: " str # This reads a line from the user using "read". -p 
echo "You entered: $str"
