# Day 11 Drill

# task: Create a new user with a home directory and Bash shell
command: sudo useradd -m -s /bin/bash stellar

# task: Set the password for the new user
command: sudo passwd stellar

# task: Add the new user to a secondary group
command: sudo usermod -aG sudo developer stellar

# task: Rename the user account
command: sudo usermod -l titans stellar

# task: Remove the user account along with their home directory
command: sudo userdel -r titans
