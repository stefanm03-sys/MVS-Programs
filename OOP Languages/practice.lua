--[[
This is a multi line Lua comment
]]--
-- This is a comment in Lua

print("Hello, World!") -- This is a comment. This line prints "Hello, World!" to the console

var = 10 -- This line assigns the value 10 to the variable 'var'
print(var) -- This line prints the value of 'var' to the console

local number = 2 + 2 -- This does a math operation for the value of 'number'. local defines something used in a shorter context window rather then being accessed globally

for i = 1, 5 do -- This line starts a numeric loop that will iterate from 1 to 5. i is a local placeholder variable that takes on the value of each iteration
    print("Iteration: " .. i) -- This line prints the current iteration number
end -- This marks the end of a block of code, such as a loop or function

list = {1, 2, 3, 4, 5} -- This line creates a table (similar to an array) with the values 1 through 5
for i, v in ipairs(list) do -- This line starts a generic loop that iterates over the elements of a table
    print("Index: " .. i .. ", Value: " .. v) -- This line prints the index and value of each element in the table. v is a placeholder variable that takes on the value of each element in the table during the iteration
end -- This marks the end of the loop block

function printValues(number)
    tonumber(number) -- This line converts the input 'number' to a numeric type, if it is not already
    for i = 0, number do -- This line starts a numeric loop that will iterate from 0 to the value of 'number'
        print("Iteration: ", i) -- This line prints the current value of i during each iteration
    end -- This marks the end of the loop block
end -- This marks the end of the function block

printValues(4) -- This line calls the function 'printValues' with the argument 4, which will print the numbers from 0 to 4 to the console

io.write("Enter a number: ") -- This line prompts the user to enter a number, but can be what you choose
input = io.read() -- This line reads the user's input and stores it in the variable 'input'
num = {0, 1, 2, 3, 4, 5} -- This line creates a table with the values 0 through 5
for i, v in ipairs(num) do -- This line starts a generic loop that iterates over the elements of the 'num' table
    print("The console chose: " .. v) -- This line prints the current value of v during each iteration
    print("Index: " .. i .. ", Value: " .. v) -- This line prints the index and value of each element in the 'num' table during the iteration
    break -- This forcefully exits the loop after the first iteration, so only the first element of the 'num' table will be printed
end

if input == num[0] or input == num[1] or input == num[2] or input == num[3] or input == num[4] then -- This line checks if the user's input is equal to any of the elements in the 'num' table
    print("You guessed correctly the number! You said: " .. input) -- If the condition is true, this line prints "You win!" to the console
else -- This line starts an alternative block of code that will execute if the previous condition was false
    print("You guessed an incorrect number or gave nil! You said: " .. input) -- If the user's input does not match any of the elements in the 'num' table, this line prints "You lose!" to the console
end -- This marks the end of the if-else block