// This is a JS comment
/*
This is a multi line comment
*/

// Javascript is a language for giving cool functions to web pages

console.log("Hello world!") // This prints data to the console, can be variables, expressions, etc
console.warn("Warning! (example)") // Prints a warning to the console
console.error("This is an error.") // This prints an error to the console

let x = 1; // "let" defines a changing variable. The semi-colon individualizes the statement
const y = 2; // "const" defines a consistent, non changing variable
var z = "3"; // Older variable assignment, valid but not suggested
let bool = true; // Boolean assignment
let n = null; // Placeholder for missing data, can be reassigned 
let notDefined; // No value whatsoever
let obj = {str: "Javascript"}; // Makes an object with values
console.log(x + y); // Returns sum of x and y

//

/*
* is when you are multiplying
/ is dividing values
% returns the remaining value of division
*/

function addnum(a, b) { /*
    'function' defines a custom function. Edit it to your likings with unique parameters
    */
    a = parseInt(a, 10) // The parameter a will be an integer
    b = parseInt(b, 10) // The parameter b will also be an integer
    let c = a + b // This has the value of both numbers
    console.log("a and b equal:", c) // Prints out data
}

addnum(9, 10); // Returns 19

//

/*
null is a placeholder for missing data
NaN is a non real number
*/
list = [true, null] // Creates an array using brackets
console.log(list[0]); // Prints the first index (0 is the first item)
list.push(NaN); // Adds a value to the list end
list.unshift(false); // Adds a value to the list start
list.pop() // Removes value from the end
list.shift() // Removes value from the start

list[0] = true; // Updates the list
list[1] = false;
list[2] = NaN;

list.sort(); // Alphabetically sort
list.sort((a, b) => a - b); // Numerically sort (using numbers in the list. If there are no numbers do not use this sort method)
list.reverse(); // Reverse current list order

let table = [null] 
let merged = list.concat(table) // This merges two arrays with each other for more elements
let chunk = list.slice(0, 1); // Extracts certain indexes from a to b and returns them (if stored)
list.splice(1, 2, "true", "false"); /*
1 is the start to modify, 2 is how many items to delete
Replace 2 with 0 to add elements without removing any
*/

//

for (let i = 0; i <= 5; i++) { /*
     This is a generic for loop. i is the initializer and a local variable to increment. 
     i <= 5 is the condition to use. 
     i++ is incrementing (use i-- to decrement)
     */
    console.log("Index:", i);
}

let array = ["string", "boolean", "integer", "float"]
for (const item of array) { /*
    This is a 'for .. of' loop with a variable "item" to take the value of the array items when cycled
    */
    console.log(item); continue; // 'continue' skips the next line
    console.log("Array Item:", item); // Avoids printing this line out
}

let a = 0;
do { /*
    Runs at least once, similar to a while loop with a condition but only while it is true or ended manually
    */
    a++;
    console.log(a);
    if (a > 5) { // Breaks the loop 
        break
    }
} while (true)

let i = 0;
while (true) { /*
     This is a while loop. It runs using a condition in parenthesis for as long as it is not false
     */
    do { // Starts a loop to do process, like incrementing
        console.log("Index:", i);
        i++; // This increments the value i
    } while (i < 10) // Condition the "do" operation should run on
    console.log(x); // This prints the value of x
    if (i >= 10) { // Condition to end the loop using break
        console.log("x is above set limit!")
        break // Forcefully ends the loop
    }
}

//

let yourStr = prompt("How are you? "); /*
Places a default pop up on your device with the prompt and textbox to type in. It is stored in 'yourStr'
*/
console.log(yourStr);
alert("You reached an alert!"); // Summons a default pop up with text displayed
let ans = confirm("Continue?"); // Should display options like "OK" and "Cancel"
if (ans) { // Logs the answer as true if "Ok" was pressed
    console.log("Ok!")
} else { // Returns other code if operation is cancelled
    console.log("Cancel!")
}

// 
