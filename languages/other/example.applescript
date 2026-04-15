-- This is an AppleScript comment

set myName to "YourName" -- AS is like human dialogue. set var to (data) is a simple way to remember variable assignments
display dialogue "Welcome" & myName -- Display strings and concat them using &

--

set numA to 7
set numB to 10
if numA < numB then -- Start a primary condition
    display dialogue "B is bigger!"
else if numB < numB then -- Use else if for a secondary condition
    display dialogue "A is bigger!"
else -- Failsafe to run if both conditions are false
    display dialogue "Both are equal/unequal or cannot be determined"
end if -- Use end and the corresponding operator to close the block

set bin to {"boolean", "string", "float", "integer"} -- Create a list of items
item 3 of bin -- Print out a specific item from the areay

--

repeat with i from 0 to 10 -- Begin a fixed loop
    display dialogue "i is:" & i -- You can concat numeric values in AS
end repeat -- Close loop

--

tell application "Finder" -- Call an app from macOS, such as finder
    make new folder at desktop with properties {name: "Folder"} -- Make a folder with properties