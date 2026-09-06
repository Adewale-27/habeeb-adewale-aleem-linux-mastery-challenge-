## Day 28 Drill

# task: Create a Bash script with the Bash shebang

command: #!/bin/bash

# task: Make the script executable

command: chmod +x script.sh

# task: Execute the Bash script

command: ./script.sh

# task: Create a variable

command: VAR=value

# task: Use command substitution

command: VAR=$(command)

# task: Read the user's name

command: read -p "Enter your name: " NAME

# task: Check whether a config file exists

command: if [ -f config.conf ]; then echo "Config file exists"; else echo "Config file does not exist"; fi

# task: Compare numeric values

command: if [ "$NUMBER" -gt 10 ]; then echo "Greater than 10"; fi

# task: Loop through three server names

command: for SERVER in server1 server2 server3; do echo "$SERVER"; done

# task: Use a while loop

command: COUNT=1; while [ "$COUNT" -le 3 ]; do echo "$COUNT"; COUNT=$((COUNT + 1)); done

