-- This is a Lua comment
--[[ 
sup
]]-- This is a multi-line comment. The code between the brackets is not executed

print("Hello, World!") -- This is a comment. This line prints "Hello, World!" to the console
var = 10 -- This line assigns the value 10 to the variable 'var'
print(var) -- This line prints the value of 'var' to the console

--

local number = 2 + 2 -- This does a math operation for the value of 'number'. local defines something used in a shorter context window rather then being accessed globally
print(number)
function add(a, b)
    number = a
    b = b
    print(number + b) -- This prints the sum of number and b
end
add(2, 2)

for i = 1, 5 do -- This line starts a numeric loop that will iterate from 1 to 5. i is a local placeholder variable that takes on the value of each iteration
    print("Iteration: " .. i) -- This line prints the current iteration number
end -- This marks the end of a block of code, such as a loop or function. The double periods .. add strings in a single print statement

list = {1, 2, 3, 4, 5} -- This line creates a table (similar to an array) with the values 1 through 5
for i, v in ipairs(list) do -- This line starts a generic loop that iterates over the elements of a table
    print("Index: " .. i .. ", Value: " .. v) -- This line prints the index and value of each element in the table. v is a placeholder variable that takes on the value of each element in the table during the iteration
end -- This marks the end of the loop block

--

--[[
* does multiplication
/ does division
% returns the remainder of division
]]--

function printValues(number)
    number = tonumber(number) -- This line converts the input 'number' to a numeric type, if it is not already
    for i = 0, number do -- This line starts a numeric loop that will iterate from 0 to the value of 'number'
        print(i) -- This line prints the current value of i during each iteration
    end -- This marks the end of the loop block
end -- This marks the end of the function block
printValues(4) -- This line calls the function 'printValues' with the argument 4, which will print the numbers from 0 to 4 to the console

--

io.write("Enter a number: ") -- This line prompts the user to enter a number
input = io.read() -- This line reads the user's input and stores it in the variable 'input'
num = {0, 1, 2, 3, 4, 5} -- This line creates a table with the values 0 through 5
for i, v in ipairs(num) do -- This line starts a generic loop that iterates over the elements of the 'num' table
    rand = math.random(1, #num) -- This line picks a random index for the 'num' table during each iteration
    print("Possible Number:", num[rand]) -- This line prints each element of the 'num' table as a possible number
    break -- This forcefully exits the loop after the first iteration, so only the first chosen element of the 'num' table will be printed
end

input = tonumber(input) -- This line converts the user's previous input from a string to a numeric type, if possible
if input == num[rand] then -- This is a condition that checks if the user's input is equal to the randomly selected number from the 'num' table
    print("You guessed correctly!") -- This line prints a message if the user's guess is correct
else 
    print("You guessed incorrectly!") -- This line prints a message if the user's guess is incorrect
end -- This marks the end of the if-else block

--

print("Possible Number:", math.random(1, 5)) -- This line generates a random number between 1 and 5, inclusive. The math.random function is used to generate random numbers in Lua. Here, it prints a random number between 1 and 5 to the console

io.write("The console is choosing a number between 1 and 5. Guess: ")
guess = io.read()
guess = tonumber(guess)
cpu = math.random(1, 5) -- This generates a random number between 1 and 5
print(cpu)
if guess == cpu then
    print("You guessed correctly!")
    print("Console returned:", cpu)
elseif guess ~= cpu then
    print("You guessed incorrectly!")
    print("Console returned:", cpu)
end

--

local Animal = {} -- A basic class using curly braces
Animal.__index = Animal -- Defines an index

function Animal:new(name) -- Constructor
    local obj = { name = name or "unknown" } -- Declares that the object defined has a value or "unknown" value
    setmetatable(obj, self) -- Inherit methods for the object
    return obj
end

function Animal:speak() -- A method meant to be overridden using a class
    print(self.name .. " makes a sound.") -- self.objvalue uses the name of the said object from the main class
end

local Dog = setmetatable({}, { __index = Animal }) -- Dog is a subclass of Animal using {}, _index = animal
Dog.__index = Dog -- Adds it to the class

function Dog:new(name) -- Creates a function for the dog class with the original method
    local obj = Animal.new(self, name or "Dog") -- Call parent constructor and return the obj from the original class
    return obj
end

function Dog:speak() -- Overriding class
    print(self.name .. " says: Woof!")
end

local Cat = setmetatable({}, { __index = Animal }) -- Cat is also a subclass of the main class Animal
Cat.__index = Cat

function Cat:new(name)
    local obj = Animal.new(self, name or "Cat")
    return obj
end

function Cat:speak() -- Override
    print(self.name .. " says: Meow!")
end

local zoo = { Dog:new("Fido"), Cat:new("Luna"), Animal:new("Creature") } -- I have no idea whats happening here
for _, animal in ipairs(zoo) do -- Polymorphic call here
    animal:speak() -- Call the method
end

--

local AccessLevel = { guest = 0, user = 1, admin = 2 } 
print("Enum-like admin value:", AccessLevel.admin) -- Print the value of the enum using Definition.value (how I understand it)

-- 

local function fetch_message() -- Async function routine
    coroutine.yield("Pausing for effect...") -- The yield method simulates an awaiting 
    return "Coroutine resume: hello!"
end

local co = coroutine.create(fetch_message) -- First await
local ok, pauseMsg = coroutine.resume(co) -- First resume, gets yielded value
print(pauseMsg) -- First await
local ok2, finalMsg = coroutine.resume(co) -- Second resume, gets return value
print(finalMsg) -- Second await


local function risky_divide(a, b) -- A function to detect when an error is gounf
    return a / b -- Test the given values
end

local ok3, result = pcall(risky_divide, 10, 0) -- This will error the function
if not ok3 then
    print("Caught error:", result) -- Prints the result
end


local function main() -- Creates a main() method
    print("Lua demo complete.")
end

main() -- Entry point call

-- #
-- The code below is OS and server functions
-- #

--[[

-- #
-- io Module
-- #

local io = require("io")

-- The characters inside the paramaters indicate the process
local file = io.open("data.txt", "r")   -- Read a file
local file = io.open("data.txt", "w")   -- Overwrite a file
local file = io.open("data.txt", "a")   -- Append a file

local f = io.open("data.txt", "r") -- Read a file and store it locally
local content = f:read("*all")   -- Read a file entirely and store it locally
f:close() -- Close out the file
print(content) -- Print out the content

for line in io.lines("data.txt") do -- Read the lines of a file, if theres any
    print(line)
end

local f = io.open("notes.txt", "w") -- Get the file
f:write("Hello from Lua!\n") -- Use :write() to write into the file
f:close() -- Use :close() to exit the file

f:read("*line") -- Read one line
f:read("*n") -- Read a number
f:read(5) -- Read 5 characters


-- #
-- OS Module
-- #
local os = require("os")


os.execute("mkdir folder") -- Run your OS terminal, be wary of these

print(os.time()) -- Print the time as of now
print(os.date()) -- Print the date of today
print(os.date("%Y-%m-%d")) -- Print date using a format

os.rename("old.txt", "new.txt") -- Rename a file
os.remove("this.pdf") -- Delete a file




]]
