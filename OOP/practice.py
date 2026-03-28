
"""
This is a multi-line comment. The code in the triple quotes is ignored
"""

# This is a variable that stores a number and prints it to the console
num = input("Enter a number: ") # num is the variable. input() is the user input to be accepted
num = int(num) # int() converts the input to an integer
print("The number you entered is: " + str(num)) # This prints the variable. str() converts the number back to a string for concatenation with a + sign

for i in range(6): # This is a loop that will run 6 times. i is the variable that will take on the values from 0 to 5
    print("This is iteration number: " + str(i)) # This prints the current iteration number. str() converts the integer to a string for concatenation

#

"""
* indicates multiplied values
/ indicates divided values
% indicates that the remainder from division is returned instead of the value of division from two values
"""

def add_numbers(a=None, b=None): # This is a function that takes two parameters, a and b
    if a is None or b is None:
        a = input("Enter the first number, a: ") # This prompts the user to enter the first number and stores it in variable a
        b = input("Enter the second number, b: ") # This prompts the user to enter the second number and stores it in variable b
    a = int(a) # Converts the input to an integer
    b = int(b) # Converts the input to an integer
    print("The sum of the two numbers is: " + str(a + b)) # This prints the sum of a and b
add_numbers(3, -5) # This calls the function add_numbers with parameters to avoid input prompts

#

if num > 0: # This checks if the number is greater than 0
    print("The number from the variable num is positive.") # This prints if the number is positive
elif num == 0: # This checks if the number is equal to 0
    print("The number from the variable num is zero.") # This prints if the number is zero
else:
    print("The number from the variable num is negative.") # This prints if the number is negative

#

even_numbers = [] # This creates an empty list to store even numbers
for i in range(10): # This is a loop that will run 10 times. i is the variable that will take on the values from 0 to 9
    if i % 2 == 0: # This checks if i is an even number by checking if the remainder when i is divided by 2 is 0
        even_numbers.append(i) # If i is even, it is added to the even_numbers list using the append() method
print("Even numbers:", even_numbers) # This prints the list of even numbers

#

class variables: # creates a class with the name variables
    def __init__(self, name, value): # This is the constructor method that initializes the class with self, name, and value parameters
        "Initializes instance attributes from name and value."
        self.name = name # This assigns the name parameter to the instance variable self.name
        self.value = value # This assigns the value parameter to the instance variable self.value
