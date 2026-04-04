# This is a Powershell comment (Windows Only)
# Powershell only runs on windows devices
# This specific file may be rushed or incomplete/inconsistent

$number = 2 # Variable defining
$user = "person"

if ($number > 1) { # Simple condition
    "$number is greater than 1!"
}

foreach ($file in Get-ChildItem) { # Find files and iterate through them
    $file.Name # Print out the file and the name
}
