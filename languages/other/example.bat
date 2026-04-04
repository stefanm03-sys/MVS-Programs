@echo off
:: Disable printing from showing
setlocal enabledelayedexpansion
:: Call upon a set of instructions to enable


:: This is a batch (Windows Only) comment
:: Batch only works on Windows devices

set "a=5"
:: Assigns a variable
set "b=1"
set "c=9"

:: Variables can be called dynamically using %var% or "%var%"

echo Hello Windows!
:: Data is dynamic, doesn't need to be explicitly typed
echo Value is %c%
:: Substitutions for dynamic variables and such require %example% 

set /p "String=Enter a string: "
:: Read a line from the console
echo You typed: %String%
:: Return it

::

if %b% LSS %a% (
    :: Basic condition with numeric value
    echo b is less than a 
    :: Print this out if true
) else (
    echo b is greater or equal
    :: Print this out if false
)

::

echo Numeric loop:
:: Basic loop example. The first argument is the start value, the second is how much to incrememt, and the last is the times to iterate
for /l %%i in (1,1,5) do (
    :: %%i defines the variable in this context
    echo Step %%i
    :: Print out i
)

echo File loop:
:: Basic loop to iterate search for files. %%f is what to search for, and *.txt is the files to be found
for %%f in (*.txt) do (
    :: the *.txt is an example, change the file extension to find different files
    :: do operator indicates the process to execute
    echo Found file: %%f
)

echo Running command loop:
for %%n in (1 2 3) do (
    echo Run %%n: dir /b
    dir /b
)

::

echo Example of running a program (disabled):
echo start "" notepad.exe
:: If this was a real executable file, this would run

echo Pausing for 2 seconds
timeout /t 2 >nul
:: Pause for 2 seconds

pause
:: This stops the program, but it waits for any keyboard input to continue

echo Backing up this script
copy "%~f0" "%~dp0example_backup.bat" >nul
:: This will backup your script in the same folder. Here, it is just using an example

:menu
:: Creates a set of options to choose from
cls
echo 1) Say hello
:: Echo hello
echo 2) Cleanup temp files
:: Execute a cleanup
echo 3) Exit
:: Exit the menu
set /p "choice=Select: "
:: Start the selection

if "%choice%"=="1" (
    echo Hey!
    timeout /t 1 >nul
    :: Delay
    goto menu
    :: Return
)
if "%choice%"=="2" (
    echo del /q "%TEMP%\\*"
    :: Delete temporary files. This is only an example, and is printed instead of executed
    echo rmdir /s /q "%TEMP%\\old"
    :: Delete temporary directories. Also an example and is being printed
    timeout /t 1 >nul
    goto menu
)
if "%choice%"=="3" goto end
goto menu

:end
:: Marks the end of the menu
echo Done

:: The code below are primarily OS functions for Windows

mkdir examplefolder 
:: Make a directory
mkdir folderexample
rmdir examplefolder
:: Delete a directory

cd folderexample
:: Change the directory
cd 
:: List the directory

copy notes.txt backup\notes.txt
:: Copy a file
move notes.txt C:\folderexample\
:: Move a file
rename notes.txt newname.txt
:: Rename a file
del oldfile.txt
:: Delete a file

if exist data.txt echo Found the file!
:: Find a file using a condition and exist
if exist C:\Games echo Foind the folder!
:: Find a directory using exist in a condition

start python.exe
:: Open a program using the executable
call python.exe
:: Run a program and wait for it to finish

:: shutdown /s -> Shut off your device
:: shutdown /r -> Restart your device
:: shutdown /l -> Log out

:: tasklist -> Show active tasks
:: tasklist /im thisfile.exe -> End a task
:: tasklist /pid 1234 /f -> Forcr end a task with the id

:: net user -> List the users on the device
:: net user Person /add -> Add a new user
:: net localgroup admins Person /add -> Give a user admin control

:: echo %USERNAME% -> Print your account name
:: echo %USERPROFILE% -> Print YOUR user foldrr path
:: echo %APPDATA% -> Print the directory for AppData, where data id usually stored
:: echo %TEMP% -> Print the directory for temporary files

endlocal
:: End locally
exit /b
:: Exit the program
