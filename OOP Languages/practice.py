""" # Runtime
python "Obj Oriented\pratice.py"
""" # This is a multi-line comment. The code in the triple quotes is ignored

# This is a variable that stores a number and prints it to the console
num = input("Enter a number: ") # num is the variable. input() is the user input to be accepted
num = int(num) # int() converts the input to an integer
print("The number you entered is: " + str(num)) # This prints the variable. str() converts the number back to a string for concatenation with a + sign

for i in range(5): # This is a loop that will run 5 times. i is the variable that will take on the values from 0 to 5
    print("This is iteration number: " + str(i)) # This prints the current iteration number. str() converts the integer to a string for concatenation

#

def add_numbers(a, b): # This is a function that takes two parameters, a and b
    if a and b == None:
        a = input("Enter the first number, a: ") # This prompts the user to enter the first number and stores it in variable a
        b = input("Enter the second number, b: ") # This prompts the user to enter the second number and stores it in variable b
    elif a and b != None:
        a = int(a) # Converts the input to an integer
        b = int(b) # Converts the input to an integer
    print("The sum of the two numbers is: " + str(a + b)) # This prints the sum of a and b
add_numbers(3, -5) # This calls the function add_numbers with dummy arguments since the function will prompt for user input, or add parameters in a or b to avoid input prompts

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
        "The __init__ method is called when an instance of the class is created. It initializes the instance variables with the provided values. Self is a reference to the current instance of the class, and it allows you to access the instance variables and methods within the class. Name and value are parameters that are passed when creating an instance of the class, and they are used to set the instance variables self.name and self.value."
        self.name = name # This assigns the name parameter to the instance variable self.name
        self.value = value # This assigns the value parameter to the instance variable self.value