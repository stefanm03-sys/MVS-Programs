// This is a comment in TS
/*
This is a multi line comment in TS
*/

let x = 2; // A simple way to define a variable that can be changed. The semicolon (;) indicates an individual statement
const y = 3; // A way to define a consistent variable (wont change)
console.log(x + y); // A printing statement in TypeScript

let z: string = "TypeScript"; // A variable defined using static typing (the : symbol /and string =)

function addNum(a: number, b: number) {
    let i = a + b;
    console.log(i);
} // A function to add numerous values together

function compare(a: string, b: string) {
    let i = null;
    let j = null;
    let binA = [];
    let binB = [];
    binA.push(i)
    binB.push(j)
    if (binA == binB) {
        console.log("Found a match! ${i} matches ${j} in function.");
    } else {
        console.log("No matches found! Returned null or is considered false.")
    }
} // A function to compare strings

compare("hello", "world")