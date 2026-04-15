#!/bin/bash

# This is a bash (shell) comment
: <<'COMMENT'
This is a multi line comment.
Using a comment like this acts as a non usable part of your code
COMMENT

# bash is for Command Line Interfaces, and CLI languages can be rather complex. bash itself is not as complex as others

echo "Hey man!" # Prints "Hey man!" echo is the keyword used for printing out data
a=1 # Variables should not have spaces when being defined
b="2"
echo "$a" # Prints the value of a
echo "$b" # Prints the value of b
echo a # Prints a (literally, not variable value)
echo "$a + $b" # This substitutes $a and $b, placeholders, with the actual variables 
echo a and b returned $((a + b)) # Math operation using variables; $ indicates the value of the variables should be used

read -p "Enter a string: " str # This reads a line from the user using "read". -p shows a prompt
echo "You entered: $str"

c=3
if [ "$c" -gt 2 ]; then # This is a conditional in bash. -gt is greater than
    echo "c is currently greater than 2"
else # Failsafe code to run if the original condition is false using else
    echo "c is not greater than 2"
fi # This marks the end of the condition

calc() { # A simple calculator function
    op=$1 # This is the mathematical operator set as the first argument ($1)
    a=$2 # First value as the second argument
    b=$3 # Second value as the third argument
    echo "Calculating.."
    if [ "$op" = "*" ]; then # Checks the operator passed in
        echo Returned: $((a * b)) # Math is done using double parentheses and echo prints the result
    elif [ "$op" = "/" ]; then
        echo Returned: $((a / b))
    elif [ "$op" = "+" ]; then
        echo Returned: $((a + b))
    elif [ "$op" = "-" ]; then
        echo Returned: $((a - b))
    elif [ "$op" = "%" ]; then
        echo Returned: $((a % b))
    else
        echo "Unknown operator or invalid input: $op" # Handles invalid input
    fi
}

calc "*" 5 2 # This calls the function with the parameters. Functions are not called using parentheses

#

select choice in Start Stop Restart Quit; do case $choice in # Begin a selection of items using the items in this line
    Start) echo "Starting" ;;
    Stop) echo "Stopping" ;;
    Restart) echo "Restarting" ;;
    Quit) echo "Quitting"; break ;;
    *) echo "Not an option!" ;;
    esac # Escape the program
done # Mark it as complete


: <<'EXAMPLES' # This is a example block, not meant to execute. This is here to avoid system issues

Below are commands for running CLI programs using shell commands.
These -(flags) and --(long flags) modify the commands and are generally the same for each bash command, but some are unique.

#program -v # Common way to print the version of a package or program

cd #file
# Replace '#file' with your file or folder path to navigate to it. cd is Change Directory
cd C:/foldera/folderb/file.txt

pwd 
# Prints your current directory. pwd is Print Working Directory

mkdir new_directory
# Makes a new directory.
mkdir -p dir/subdir # Make a main and sub directory
mkdir -v dir # Print a message after creating the directory
mkdir -m 755 dir # Set permissions for the directory. 755 allows read, write, and execute. Scroll down to find the other numeric permission values

rmdir new_directory
# Removes a directory, very similar to mkdir

touch new_file.txt
# Replace 'new_file.txt' with your desired file name and extension. This makes a new file with the name and extension specified
touch -r #file1 #file2 # Makes both files have the same timestamp. file1 is the reference
touch -t yearmonthdayhourminutesecond # Sets the timestamp to the given date
touch -a #file # Change the time of access to current time
touch -m #file # Change the time of modification to current time
touch -b #file # Backup a file before making a timestamp

rm #file 
# Deletes a file. Can also delete directories with -r, and -f to force deletion without confirmation
rm -r #dir # Remove directory
rm -f #file # Force delete item

head / tail #file # Print the first or last 10 lines of a file

grep "search term" #file
# Find a term in a target file
grep -i "search term" #file # Case-insensitive search 
grep -r "search term" #dir # Search inside of directories
grep -n "search term" #file # Print lines that match the search with numbers

wc #file 
# Counts the lines, words, characters inside files
wc -l # Count lines
wc -w # Count words
wc -c # Count characters
wc -m # Count characters, includes spaces
wc -L # Count the longest line
wc -lwm # Count all of the above (not longest line)

ls # Lists the files in the current directory
ls -l # Lists files with more details
ls -a # Lists files with hidden files
ls -la # Lists files with more details and hidden files
ls -R # Lists files recursively
ls -lh # Lists files with detail and readable file size
ls -lt # Sorts files by modification date
ls -S # Sort files by size
ls -r # Reverse list order
ls -d */ # Lists the directories in the current one
ls -lhS # List largest files first with human-readable sizes
ls -ltr # List oldest files last (reverse time sort)

npm # Node Package Manager for Node/TSC projects. It can also install external programs, libraries, and packages for other languages using package.json
npm init # Creates a package.json file for projects
npm install -g <package> # The -g installs the package globally instead of just the current project
npm ls # List installed packages
npm -v # Check npm version
npm list -g # List global packages
npm install @package/name # Installs a package from the npm registry
npm install # Installs what is listed in package.json
npm install --save-dev @package/name # Installs packages as dev dependencies
npm install --save-prod @package/name # Installs packages as production dependencies
npm uninstall @package/name # Uninstall a package
npm uninstall --save-dev @package/name # Uninstall dev dependency
npm uninstall --save-prod @package/name # Uninstall production dependency
npm update # Update all packages
npm update @package/name # Update specified items

cp src dest # Copies the source file to a directory or destination file
cp -l #file1 #file2 # Makes a hard link instead of a new file
cp -r #dir1 #dir2 # Copy directories and content
cp -i #file1 #file2 # Overwrite files, -i requests confirmation
cp -v #file1 #file2 # Print a message after copying

mv src dest # Move source to a location
# Same flags as cp but for moving instead of duplicating

tar #file # Compress and extract files
tar -cvf archive.tar #dir # Create a tar archive from a directory
tar -xvf archive.tar # Extract said archive
tar -czvf archive.tar.gz #dir # Create a gzipped archive
tar -xzvf archive.tar.gz # Extract a gz archive
tar -cvf archive.tar #file1 #file2 OR dir # Create specified archive from files or directories
tar -tf archive.tar # List contents of an archive without extracting

zip / unzip #item # Basic compress and decompress

gzip / gunzip #file # Compress and decompress single files, not directories

chmod #file # Change permissions of files and directories
chmod 755 # read, write, execute for owner / read and execute for others
chmod 644 # read, write for owner / read for others
chmod 700 # read, write, execute for owner / no permissions for others
chmod 600 # Similar to 700 but no executing
chmod 400 # Similar to 600 but only reading
chmod 000 # Cannot be accessed by any means
chmod +x #file # Add execution permissions to a file
chmod -R #dir # Change permissions of directories and content

command & # Run a command in the background

command1 & command2 & # Launch multiple jobs in background

jobs -l # List current jobs with PIDs (Process Identifiers)

bg %1 # Resume suspended job 1 in the background

fg %1 # Bring job 1 to the foreground

kill %1 # Stop a job by its job number (or use kill <PID>)
kill -9 <PID> # Forcefully terminate a process (use wisely)

nohup command & # Keep a command running after closing the terminal
nohup command >/dev/null 2>&1 & # Run detached and silence output

ps -ef | grep pattern # Find matching processes (portable flags). Simply replace 'pattern' with what process you want to find
ps -eo pid,cmd,%cpu,%mem --sort=-%cpu | head # Top CPU consumers

pgrep pattern # Find PIDs matching a pattern

pkill pattern # Kill processes by name/pattern

top # Interactive process viewer (press q to quit)

htop # Nicer top with colors (if installed)

ping -c 4 example.com # Test connectivity with packets

curl https://example.com 
# Fetch the content from s page
curl -I https://example.com # Fetch only headers
curl -O https://example.com/file.zip # Download a file
wget https://example.com/file.zip # Alternative downloader
curl -L -o out.zip https://example.com/file.zip # Follow redirects and save as out.zip

wget -c https://example.com/file.zip # Continue an interrupted download

traceroute example.com # Trace network hops (may need sudo/install)

dig example.com # DNS lookup to find IP address (use nslookup if dig absent)
dig +short example.com # Brief DNS answer

ip addr show # Show network interfaces (ifconfig on older systems)

ss -tuln # List listening sockets (netstat -tuln on older systems)
ss -tp # Show TCP connections with processes

ssh -p 22 user@host # Remote shell (custom port with -p)

scp -P 22 file user@host:/path # Copy file to remote host (custom port with -P)
scp -r project/ user@host:/path # Copy a directory recursively

uname -a # Kernel and system information

lsb_release -a # Distro info (Debian/Ubuntu-based; else use cat /etc/os-release)

df -h # Disk free in human units
df -hT # Disk free with filesystem types

du -sh . # Size of current directory
du -sh * # Sizes of items in current dir

free -h # Memory usage
free -m # Memory usage in MB

uptime # How long the system has been running

env | less # Print environment variables 
# less is used to list the output variables one page at a time

which bash # Show path to an executable

date # Current date/time

history | tail # Recent command history

find /var/log -name "*.log" # Find log files by pattern
ls -R # Recursive list of files and directories
du -sh . # Show size of current directory

# Example server start commands (printed only)
echo python -m http.server 8000
echo node server.js
echo php -S localhost:8000
EXAMPLES
