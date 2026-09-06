# Day 28: Bash Scripting Foundations

1. `#!/bin/bash` (shebang) — Specifies Bash as the script interpreter.

Example:

    #!/bin/bash

This tells the system to use Bash when executing the script.

2. `chmod +x script.sh` — Makes a Bash script executable.

Example:

    chmod +x script.sh

This gives the script execute permission.

3. `./script.sh` — Executes a script from the current directory.

Example:

    ./script.sh

This runs the executable Bash script.

4. `VAR=value` — Creates and assigns a value to a Bash variable.

Example:

    NAME="Aleem"

This stores a value in the variable for use within the script.

5. `$()` command substitution — Uses the output of a command as part of another command or variable.

Example:

    DATE=$(date)

This stores the output of the `date` command in the `DATE` variable.

6. `read -p` — Reads input from the user with a prompt.

Example:

    read -p "Enter your name: " NAME

This displays a prompt and stores the user's input in a variable.

7. `if / elif / else / fi` — Performs conditional logic in Bash.
`if` - starts the condition.
`then` - begins the commands to run if the condition is true.
`elif` - checks another condition if the previous one was false.
`else` - runs if none of the conditions were true.
`fi` - ends the if statement (if backwards).

Example:

    if [ -f config.conf ]; then
        echo "Config file exists"
    elif [ -d config.conf ]; then
        echo "Config is a directory"
    else
        echo "Config file does not exist"
    fi

This allows a script to make decisions based on conditions.

8. `-gt / -lt / -eq` — Performs numeric comparisons.
`-eq` - equal
`-ne` - not equal
`-gt` - greater than
`-ge` - greater than or equal
`-lt` - less than
`-le` - less than or equal

Example:

    if [ "$NUMBER" -gt 10 ]; then
        echo "Number is greater than 10"
    fi

These operators compare numeric values.

9. `for` loop — Repeats commands for each item in a list.

Example:

    for SERVER in server1 server2 server3; do
        ping -c 1 "$SERVER"
    done

This runs the commands once for each server.

10. `while` loop — Repeats commands while a condition remains true.

Example:

    COUNT=1

    while [ "$COUNT" -le 3 ]; do
        echo "Count: $COUNT"
        COUNT=$((COUNT + 1))
    done

This repeats the commands while the condition is true.

## Example script creation sequence

    nano script.sh

    chmod +x script.sh

    ./script.sh

## Example variable sequence

    NAME="Aleem"

    echo "$NAME"

    DATE=$(date)

    echo "$DATE"

## Example user input sequence

    read -p "Enter your name: " NAME

    echo "Hello $NAME"

## Example conditional sequence

    if [ -f config.conf ]; then
        echo "Config file exists"
    else
        echo "Config file does not exist"
    fi

## Example comparison sequence

    if [ "$NUMBER" -gt 10 ]; then
        echo "Greater than 10"
    fi

    if [ "$NUMBER" -lt 10 ]; then
        echo "Less than 10"
    fi

    if [ "$NUMBER" -eq 10 ]; then
        echo "Equal to 10"
    fi

## Example for loop sequence

    for SERVER in server1 server2 server3; do
        echo "$SERVER"
    done

## Example while loop sequence

    COUNT=1

    while [ "$COUNT" -le 3 ]; do
        echo "$COUNT"
        COUNT=$((COUNT + 1))
    done

## Example Bash scripting checkpoint sequence

    nano script.sh

    chmod +x script.sh

    ./script.sh

    read -p "Enter your name: " NAME

    if [ -f config.conf ]; then
        echo "Config file exists"
    else
        echo "Config file does not exist"
    fi

    for SERVER in server1 server2 server3; do
        ping -c 1 "$SERVER"
    done
