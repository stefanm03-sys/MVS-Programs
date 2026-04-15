# This is a Ruby comment

a = "Name" # Ruby is dynamically typed
b = true # Define a boolean variable
c = 18 # Define a variable with an integer
d = 3.14 # Define a variable with a float (decimal)

print(d) # Print out something

#

if d < c # Primary condition to run
  print("d is smaller than c.")
elsif d > c # Failsafe condition to run
  print("d is greater than c.")
else # If neither conditions are true, run this
  print("values are negative or equal")
end # Almost all blocks of code use the end statement to close

#

def quotient(a, b) # Define a function
  print("Calculating..")
  if a.nil? || b.nil? # Primary condition
    # Use .nil? to recognize a blank value in a condition, or nil in assignment
    # Use || to indicate the 'or' operation
    print("Please give me values!")
  elsif !a.is_a?(Integer) || !b.is_a?(Integer) # Failsafe condition
    # Use elsif for a failsafe condition
    # Use !var.is_var?(Integer) to recognize the data provided, the ! is the inequal operation
    print("Please provide integers!")
  else # Failsafe to run
    print("Quotient is: #{a / b}") # Use #{} to add variables into strings
  end
end

puts quotient(10, 2) # Call your function using puts
quotient(20, 4) # Call your function

#

class Credentials # Classes in Ruby are much simpler and easy to use
  def initialize(uname, pass) # Define an initializer to construct your class
    @uname = uname # Use @var for the constructor
    @pass = pass
  end
  def login # Define a method in your class to be used
    print("Hello #{@uname}!") # Use a #{} to substitute values in strings
    print("Authorizing login with your password! (Pass: #{@pass})")
  end

  def signup
    print("Welcome! Provide sign up credentials:")
    print("Username: ")
    @uname = gets&.chomp # Ask for input from the user using a previous print and setting a variable equal to gets&.chomp 
    print("Password: ")
    @pass = gets&.chomp
    login # Call the method in your class
  end

end

e = Credentials.new("person", "pass") # Make a new assignment derived of the main class and its parameters
puts e.signup # Call the method from a class on a specific variable using puts
print(e)
