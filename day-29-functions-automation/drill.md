## Day 29 Drill

# task: Create a reusable function

command: function_name() { }

# task: Accept a service name as the first argument

command: $1

# task: Accept a second argument

command: $2

# task: Display the number of arguments

command: echo $#

# task: Display all script arguments

command: echo $@

# task: Display the script name

command: echo $0

# task: Check the exit code of the previous command

command: echo $?

# task: Schedule a script to run every hour

command: crontab -e

# task: Run a script in the background

command: nohup script.sh &

# task: Handle an interrupt signal

command: trap 'echo "Script interrupted"' SIGINT

# task: Log a message to the system log

command: logger "Service check completed"

# task: Check whether a service is running and restart it if stopped

command: if systemctl is-active --quiet "$1"; then echo "$1 is running"; else echo "$1 is stopped"; sudo systemctl restart "$1"; fi

# task: Schedule the service check to run hourly

command: 0 * * * * /home/user/check-service.sh nginx
