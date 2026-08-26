## Day 17 Drill

# task: Open the Bash configuration file

command: nano ~/.bashrc

# task: Add a permanent environment variable

command: export DAY17_PROJECT="I'm Habeeb. I'm doing a 30-days-Linux-challenge"

# task: Create a custom aliases

command: alias ll='ls -lah'
command: alias name='adecloud'

# task: Reload the Bash configuration

command: source ~/.bashrc

# task: Verify the permanent environment variable

command: echo $DAY17_PROJECT

# task: Verify the custom aliases

command: alias ll
command: alias name

# task: Remove the custom aliases

command: unalias ll
command: unalias name

# task: Verify the aliases was removed

command: type ll
command: type name

# task: Reload the Bash configuration again

command: source ~/.bashrc

# task: Verify the aliases was restored

command: type ll
command: type name

# task: Inspect the Bash login configuration

command: cat ~/.bash_profile

# task: Inspect how Bash resolves a command

command: type bash

# task: Locate the Bash executable

command: which bash

# task: Locate Bash binary and related files

command: whereis bash

# task: Start a fresh Bash session

command: bash

# task: Verify the environment variable persists

command: echo $DAY17_PROJECT

# task: Verify the aliases persists in the fresh session

command: alias ll
command: alias name

# task: Exit the fresh Bash session

command: exit

# task: Inspect system-wide environment configuration

command: cat /etc/environment

# task: Inspect system-wide Bash configuration

command: cat /etc/bash.bashrc
