
"""
This is a multi-line comment. The code in the triple quotes is ignored
"""
x = 1 # This assigns a variable, here is a numeric value
y = "str" # Assign a string
z = True # Or a booleans


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

def add_numbers(a, b): # This is a function that takes two parameters, a and b
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

# Polymorphism example
class Animal: # Base class
    def speak(self): # A class method meant to be overridden
        return "Insert sound here"

class Dog(Animal): # Dog inherits from Animal, used as a subclass
    def speak(self): # Calls the method
        return "Woof!" # Overrides the return result

class Cat(Animal): # Cat also inherits from Animal, will also be a subclass
    def speak(self):
        return "Meow!"

# Using the polymorphic behavior
animals = [Dog(), Cat(), Animal()] # A list of different Animal types, the item() examples of polymorphisim
for creature in animals: # Loop over each animal in said list
    print(creature.speak()) # Calls the version of speak defined on that specific class 

#

from enum import Enum # Imports enum, which are basically consistent variables

class AccessLevel(Enum): # Simple enum example
    GUEST = 0
    USER = 1
    ADMIN = 2

print(AccessLevel.GUEST) # Print the class and said value
print(AccessLevel.USER.value) # Print the numeric value assigned 
print(AccessLevel.USER.name) # Print the variable name

#

import asyncio # Imports async for timed events

async def fetch_message(): # Async coroutine definition
    await asyncio.sleep(0.2) # Simulated delay if used
    return "Async hello!"

#

def safe_divide(a, b): # Defines a function with error handling
    try: # Executes as normal
        return a / b # Divide this
    except ZeroDivisionError as exc: # Catch divide-by-zero error. If an error with a zero division ocurrs, the except block prints the error
        print(f"Caught error: {exc}") # Uses f"str: {exc}" to return a console output
        return None

#

def main(): # Define a main entry point 
    print("Enum sample:", AccessLevel.ADMIN) # Print the AccessLevel class
    print("Divide result:", safe_divide(10, 2)) # Try the said parameters in division
    print("Divide by zero:", safe_divide(5, 0)) # Try the said parameters, will return the except block
    # Run async coroutine, will fetch a method using asyncio.run(yourmethod())
    message = asyncio.run(fetch_message())
    print(message) # Prints the result of the method

if __name__ == "__main__": # Entry point guard for the continuing commands
    main()

# ---
# This point on is server and OS functions
# ---

"""
import pathlib # Enable file exploring
from pathlib import Path # Import a certain module from an imported library
import http.server # Import servers
import socketserver


# --
# pathlib Module
# Commented out to avoid issues
# --

p = Path("folder/subfolder/file.pdf")
print(p) # Print out the path of said directory

cwd = Path.cwd()
print(cwd) # Print the current working directory

home = Path.home()
print(home) # Print the home directory

p = Path("folder") / "subfolder" / "img.jpeg" # Assign a path using slashes for strings
print(p)

p.exists() # Checks that the path exists, determines it
p.is_file() # Get the file type
p.is_dir() # Get the directory

print(p.name) # Print file name
print(p.stem) # Print the file name w/o extension
print(p.suffix) # Print extension w/o file name
print(p.parent) # Print directory parent
print(p.parents) # Print all parents
print(p.parts) # Print each parent folder

p.resolve() # Get the absolute path

Path("data").mkdir() # Make a directory with a name
Path("data/logs/2024").mkdir(parents=True, exist_ok=True) # Create a directory with it's parents, returns no error if they exist

Path("snake.txt").touch() # Create a file with a name and extension

p = Path("snake.txt")
p.write_text("Hello Python!") # Write inside of a file

content = p.read_text() # Read the file contents
print(content) # Print out the contents

with p.open("a") as f: # Manually open a file
    f.write("\nMore text")

    
for directory in Path(".").iterdir(): # Iterate through a directory
    print(directory)
files = [f for f in Path(".").iterdir() if f.is_file()] # Iterate through files instead

for f in Path(".").glob("*.txt"): # Find specified files with the extension
    print(f) 
for f in Path(".").rglob("*.py"): # Recursive searching
    print(f)

Path("og.txt").rename("new.txt") # Rename something
Path("new.txt").rename("folder/new.txt") # Move the file to a new directory
Path("new.txt").unlink() # Delete something
Path("folder").rmdir() # Delete a directory, but only if it is empty

# --
# PurePath Module
# --

from pathlib import PurePath

p = PurePath("C:/Users/You/Documents")
print(p) # Print out a directory using PurePath

project = Path(".") # Get a directory 
py_files = list(project.rglob("*.py")) # List out each file with said extension
for f in Path("data").iterdir(): # Read out the files in a directory
    if f.is_file():
        print(f.read_text())


from datetime import datetime 
# Edited soon

logs = Path("logs") 
logs.mkdir(exist_ok=True)

logfile = logs / f"{datetime.now():%Y-%m-%d}.txt"
logfile.write_text("Log started.")

# --
# Extras
# --

def write_demo_file(path="demo.txt"): # Write a file using a function
    pathlib.Path(path).write_text("Hello from Python file I/O!\n") # Writes the file using the path

def read_demo_file(path="demo.txt"): # Search for the file using a function
    if pathlib.Path(path).exists(): # Checks if it exists
        return pathlib.Path(path).read_text() # Search for the file 
    return "No file found."

def run_simple_server(port=8000): # Define a function to start a server
    handler = http.server.SimpleHTTPRequestHandler # Make an HTTP handler. the handler = http.server. makes the variable the server
    with socketserver.TCPServer(("", port), handler) as httpd: # Get the server, port
        print(f"Serving HTTP on port {port} (Ctrl+C to stop)") # Print out the text and port. Use Ctrl+C to stop
        httpd.serve_forever() 

# write_demo_file(); print(read_demo_file())  # These are examples, and have been commented out to avoid side effects
# run_simple_server()  # Starts an HTTP server serving current directory
"""


"""
This is a lexer, tokenizer, interpreter
expr -> NUMBER (('+'|'-') NUMBER)*
Tokens are these NUMBER, PLUS, MINUS strings
"""

from typing import List, Tuple, Union
# Import these

Token = Tuple[str, str] # (type, lexeme)

# Tokenizing
def tokenize(src: str) -> List[Token]: # Get the tokenizer from the import, and tokenize the source
    tokens: List[Token] = [] # List the tokens. They are strings
    i = 0 # Define i
    while i < len(src): # Iterate through the source
        ch = src[i] 
        if ch.isspace(): # Whitespace
            i += 1
            continue
        if ch.isdigit(): # Get a number
            start = i
            while i < len(src) and src[i].isdigit():
                i += 1
            tokens.append(("NUMBER", src[start:i]))
            continue
        if ch == '+': # Gets the plus sign
            tokens.append(("PLUS", ch))
            i += 1
            continue
        if ch == '-': # Gets the minus sign
            tokens.append(("MINUS", ch))
            i += 1
            continue
        raise ValueError(f"Unexpected character: {ch}") # Return an error if found
    return tokens # Return the current tokens

# Parsing
def eval_expr(tokens: List[Token]) -> int:
    index = 0 # This is hard to explain, but the function will evaluate the tokens and convert them using a parser and interpreter

    def expect_number() -> int: # This expects a number
        nonlocal index
        if index >= len(tokens) or tokens[index][0] != "NUMBER": # Use the tokens to find numbers
            raise ValueError("Expected a number") # Raise an error
        value = int(tokens[index][1]) # Force the tokens into numbers
        index += 1
        return value

    def parse_term() -> int: # Parse the term into a number using expect_number()
        return expect_number()

    def parse_expr() -> int: # Parse the numeric expression
        nonlocal index
        value = parse_term() # Parse it
        while index < len(tokens) and tokens[index][0] in ("PLUS", "MINUS"): # Iterate the index of tokens
            op = tokens[index][0] # Get tokens
            index += 1
            right = parse_term() # Parse the terms again
            if op == "PLUS":
                value += right
                # Add it
            else:
                value -= right
                # Subtract it
        return value

    result = parse_expr()
    if index != len(tokens): # Check for invalid index
        raise ValueError("Unexpected input at end")
    return result

# Interpreting
def interpret(src: str) -> Union[int, str]: # Evaluate the tokens and return them
    try:
        toks = tokenize(src) # Get the tokens
        return eval_expr(toks) 
    except Exception as exc: # Error handling for bad input
        return f"Error: {exc}" 

# print(interpret("1 + 2 - 3"))
# print(interpret("10 + x"))  # Will return an error
