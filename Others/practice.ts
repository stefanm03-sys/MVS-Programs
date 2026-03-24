type User = { name: string; age: number }; // This is a type alias, it creates a new name for a type. It can be used to define a type that is more complex than a simpler one, or to give a name to a type that is used in multiple places in code. In this situation, its defining a type called User that has two properties: name and age

const u: User = { name: "Ada", age: 20 }; // This is a constant variable using the type User, and said properties name and age. The variable u is assigned an object with the name "Ada" and age 20

function greet(user: User): string { // This is a function called greet that takes a parameter user of type User and returns a string. The function uses template literals to create a greeting message that includes the given name and age
    return `Hi ${user.name}, you are ${user.age}`; // This returns a string that says "Hi" followed by the user's name and age. The ${} is used to insert the values of user.name and user.age into the string when applicable
}

console.log(greet(u));
