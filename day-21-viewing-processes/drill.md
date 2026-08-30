## Day 21 Drill

# task: Find the PID of a running process by name

command: pgrep nginx

# task: View the running process and system activity

command: top

# task: Show the process as part of the process tree

command: pstree -p

# task: Identify which process is using port 80

command: lsof -i :80

# task: View all running processes

command: ps aux

# task: View all processes in full format

command: ps -ef

# task: View processes belonging to the current user

command: ps -u aleem

# task: View processes interactively

command: htop

# task: View background jobs in the current shell

command: jobs

# task: Start a process with a lower priority

command: nice -n 10 sleep 100

# task: Change the priority of an existing process

command: renice 10 -p PID

