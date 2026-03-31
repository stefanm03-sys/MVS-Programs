<?php // This is a PHP comment, and <?php is a PHP tag

/*
This is a multi line comment
*/

echo "This is PHP"; // This prints out something

$intro = "Hello World"; // Assign a variable, PHP finds the type
$bool = true;
$number = 3.0;
$othernum = 8;
$num = 5; // Adds a comparison target so conditions below have a defined value

echo $number + $othernum; // This should return 11
echo $bool; // Return the value of a variable

//

var_dump(3 == "3"); // This reads the different data types of both and determines if they are equal
var_dump(4 === "4"); // This does the same as the previous line, but only accepts the same data type

//

if ($othernum > $num) { // Simple condition to check a math value
    echo "$othernum is greater than $num"; // Return this if main condition is true
} else if ($othernum > $num) { // Failsafe condition
    echo "$num is greater than $othernum"; // Return this if secondary condition is true
} else { // Failsafe to run
    echo "values are equal or negative"; // Returned one way or another; does not use a condition
}

//

for ($i = 0; $i < 5; $i++) { // A loop to iterate the value of i. Semi colons divide each argument; $i < 5 is the condition to run, $i++ will increment, $i-- will decrement
    echo "Index is: $i"; // Prints the value of i
}

$bin = [2, 4, 6, 8, 10]; // This creates an array to store items
foreach ($bin as $i) { // A loop specifically for arrays to iterate, $i will take the value of each index item
    echo "Index Item: $i";
}

$i = 0; // Initialize $i before using it in the while loop
while ($i < 5) { // A while loop that runs while true
    echo "Incrementing i..";
    $i++; // Increments the numeric value of i
    echo "i is now $i";

}

//

$array = [ // Define an associative array
    "name" => "yourname", // Adds an assignment inside an array
    "age" => "yourage"
];

$list = [ // Define a multidimensional array
    ["username" => "somename", "pin" => 1234], // Each value is in one index. The values can be called by "username", "pin", etc
    ["height" => 2.0, "age" => 10]
];

echo $list[1]["pin"]; // Call the first index and the value defined from the previous array
echo $array["name"]; // Call the defined value from the previous array
echo $bin[1]; // Call the second index value from the previous array (generically 1)

//

function divide(int $a, int $b) { // Use functions for custom code, the int declares specified data as the arguments
    echo "Calculating..";
    if ($a == 0 || $b == 0) { // The || argument indicates numerous values in use
        echo "Divide by zero error!";
        return null; // Early return to avoid bad math
    } else {
        echo "Calcuated!";
        return $a / $b; // Returns the operation
    }
}

divide(10, 0); // Returns an error
divide(20, 5); // Returns 4

/* 
$pdo = new PDO("mysql:host=localhost;dbname=testdb", "root", ""); // This adds a database to your program

$stmt = $pdo->query("SELECT * FROM users"); // This selects one one of the databases

if ($stmt) { // Only iterate if the query succeeded
    while ($row = $stmt->fetch()) {
        echo $row['name'] . "<br>"; // Iterates through each database
    }
} else {
    print_r($pdo->errorInfo()); // Allows error visibility
}
*/

    


?>
