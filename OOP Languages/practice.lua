--[[
I am currently practicing Lua, the stuff I know  is below
]]--

print("Hello, World!") -- This is a comment. This line prints "Hello, World!" to the console
var = 10 -- This line assigns the value 10 to the variable 'var'
print(var) -- This line prints the value of 'var' to the console

--

for i = 1, 5 do -- This line starts a numeric loop that will iterate from 1 to 5. i is a placeholder variable that takes on the value of each iteration
    print("Iteration: " .. i) -- This line prints the current iteration number
end -- This marks the end of a block of code, such as a loop or function. The double periods .. add strings in a single print statement

list = {1, 2, 3, 4, 5} -- This line creates a table (similar to an array) with the values 1 through 5
for i, v in ipairs(list) do -- This line starts a generic loop that iterates over the elements of a table
    print("Index: " .. i .. ", Value: " .. v) -- This line prints the index and value of each element in the table. v is a placeholder variable that takes on the value of each element in the table during the iteration
end -- This marks the end of the loop block

--

function printValues(number)
    tonumber(number) -- This line converts the input 'number' to a numeric type, if it is not already
    for i = 0, number do -- This line starts a numeric loop that will iterate from 0 to the value of 'number'
        print("i: ", i) -- This line prints the current value of i during each iteration
    end -- This marks the end of the loop block
end -- This marks the end of the function block
printValues(4) -- This line calls the function 'printValues' with the argument 4, which will print the numbers from 0 to 4 to the console

--

io.write("Enter a number: ") -- This line prompts the user to enter a number
input = io.read() -- This line reads the user's input and stores it in the variable 'input' as a string
num = {0, 1, 2, 3, 4, 5} -- This line creates a table with the values 0 through 5
for i, v in ipairs(num) do -- This line starts a generic loop that iterates over the elements of the 'num' table
    rand = math.random(0, 4) -- This line prints the current element of the 'num' table during each iteration
    print("Possible Number: ", num[rand]) -- This line prints each element of the 'num' table as a possible number
    break -- This forcefully exits the loop after the first iteration, so only the first element of the 'num' table will be printed
end
tonumber(input) -- This line converts the user's input from a string to a numeric type, if possible

if input == num[rand] then -- This is a condition that checks if the user's input is equal to the randomly selected number from the 'num' table
    print("You guessed correctly!") -- This line prints a message if the user's guess is correct
else 
    print("You guessed incorrectly!") -- This line prints a message if the user's guess is incorrect
end -- This marks the end of the if-else block
--

print("Possible Number: ", math.random(1, 5)) -- This line generates a random number between 1 and 5, inclusive. The math.random function is used to generate random numbers in Lua. Here, it prints a random number between 1 and 5 to the console

io.write("The console is choosing a number between 1 and 5. Guess: ")
guess = io.read()
tonumber(guess)
cpu = math.random(1, 5)
tonumber(cpu)
print(cpu)
if guess == cpu then
    print("You guessed correctly!")
    print("Console returned: ", cpu)
elseif guess ~= cpu then
    print("You guessed incorrectly!")
    print("Console returned: ", cpu)
end