print("Hello, World!") -- This is a comment. This line prints "Hello, World!" to the console

var = 10 -- This line assigns the value 10 to the variable 'var'
print(var) -- This line prints the value of 'var' to the console

for i = 1, 5 do -- This line starts a numeric loop that will iterate from 1 to 5
    print("Iteration: " .. i) -- This line prints the current iteration number
end -- This marks the end of a block of code, such as a loop or function

list = {1, 2, 3, 4, 5} -- This line creates a table (similar to an array) with the values 1 through 5
for i, v in ipairs(list) do -- This line starts a generic loop that iterates over the elements of a table
    print("Index: " .. i .. ", Value: " .. v) -- This line prints the index and value of each element in the table
end -- This marks the end of the loop block