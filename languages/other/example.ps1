# This is a Powershell comment (Windows Only)
# Powershell only runs on windows devices
# This specific file may be rushed or incomplete/inconsistent

# --
# Regular Programming
# --

$number = 2 # Variable defining
$user = "person"

if ($number > 1) { # Simple condition
    "$number is greater than 1!"
}

#

foreach ($file in Get-ChildItem) { # Find files and iterate through them
    $file.Name # Print out the file and the name
}

# --
# Windows Functions
# --

Get-ChildItem Env: # Get environment variables
$Env:PATH # Get specified variables

New-Item -ItemType Directory -Path "C:\folder" # Create a new directory
Get-ChildItem -Path C:\User # List files from a directory
Get-Content "C:\folder\file.txt\" # Read contents of said directory/file
Get-Process # List processes
Get-Service # List services
Get-NetIPAddress # List your IP
Get-Process | Where-Object {$_.WorkingSet -gt 100MB} # RAM (memory) usage, change 100 to any amount

Start-Process -Name file.exe # Start a given process by name
Stop-Process -Name notepad # Stop a given process by name 

Test-NetConnection -ComputerName google.com # Test the connection of something

Get-Acl "C:\yourfolder" # Get permissions from a directory

#

"01010" -match "\d+" # Check for numbers
"Person1" | Select-String -Pattern "\d+" -AllMatches # Extract numbers from a string
"Int: 12345" -replace "\d", "a" # Replace numbers with a string

Select-String -Path "C:\logs\app.log" -Pattern "error" # Check a file for a pattern





