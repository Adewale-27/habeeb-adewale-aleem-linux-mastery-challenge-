# Day 29: Functions, Arguments & Automation

1. `function_name() { }` — Defines a reusable Bash function.

Example:

    check_service() {
        echo "Checking service"
    }

This creates a function that can be called whenever needed.

2. `$1 / $2` positional args — Represents the first and second arguments passed to a script or function.

Example:

    echo "Service: $1"
    echo "Environment: $2"

This allows scripts to work with values provided as arguments.

3. `$# / $* / $@` — Provides information about script arguments.

Example:

    echo "Number of arguments: $#"
    echo "All arguments: $@"

`$#` shows the number of arguments, while `$*` and `$@` represent the arguments supplied to the script.

4. `$0` — Displays the name or path used to execute the script.

Example:

    echo "Script name: $0"

This can be useful when identifying which script is currently running.

5. `exit codes ($?)` — Displays the exit status of the previous command.

Example:

    systemctl status nginx
    echo $?

An exit code of `0` generally indicates success, while a non-zero value indicates an error or failure.

6. `crontab` syntax — Defines when scheduled commands should run.

Example:

    crontab -e

This opens the user's cron schedule for editing.

7. `cron scheduling (0 * * * *)` — Runs a command at the beginning of every hour.

Example:

    0 * * * * /home/user/check-service.sh

This schedules the script to run once every hour.

8. `nohup script.sh &` — Runs a script in the background and allows it to continue after the terminal session ends.

Example:

    nohup script.sh &

This is useful for running long-running scripts without keeping the terminal open.

9. `trap` — Handles signals or performs actions when a script exits.

Example:

    trap 'echo "Script interrupted"' SIGINT

This allows a script to respond to signals such as Ctrl+C.

10. `logger` — Sends messages from a script to the system logging service.

Example:

    logger "Service check completed"

This allows script activity to be recorded in the system logs.

## Example function sequence

    check_service() {
        echo "Checking $1"
    }

    check_service nginx

## Example positional argument sequence

    ./script.sh nginx production

    echo "$1"

    echo "$2"

## Example argument information sequence

    echo "Arguments: $#"

    echo "All arguments: $@"

    echo "Script: $0"

## Example exit code sequence

    systemctl is-active nginx

    echo $?

## Example cron sequence

    crontab -e

    0 * * * * /home/user/check-service.sh

## Example background execution sequence

    nohup script.sh &

## Example signal handling sequence

    trap 'echo "Script stopped"' SIGINT

## Example logging sequence

    logger "Service check completed"

## Example service automation sequence

    check_service() {
        if systemctl is-active --quiet "$1"; then
            echo "$1 is running"
        else
            echo "$1 is stopped"
            sudo systemctl restart "$1"
        fi
    }
