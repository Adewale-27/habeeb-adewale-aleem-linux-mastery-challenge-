# Phase 6: Networking, Scripting & SSH Mastery | Day 29 of 30

# Day 29: Functions, Agruments & Automation

## Today's commands

Today's checkpoint focuses on building reusable Bash functions, working with script arguments, checking exit codes, scheduling automated tasks with cron, running scripts in the background, handling signals, and logging system events.

The 10 commands and concepts covered today are documented in `commands.md`.

## Today's tasks

- Create reusable functions with `function_name() { }`
- Use positional arguments with `$1` and `$2`
- Work with arguments using `$#`, `$*`, and `$@`
- Identify the script name with `$0`
- Check command exit codes with `$?`
- Understand `crontab` syntax
- Schedule tasks with cron using `0 * * * *`
- Run scripts in the background with `nohup script.sh &`
- Handle signals with `trap`
- Record messages using `logger`

## The drill

I first converted my Bash script from Day 28 into a reusable function that accepts a service name as an argument.

I then practiced using positional arguments such as `$1` and `$2` and used `$#`, `$*`, and `$@` to work with script arguments.

Next, I used `$0` to identify the script name and `$?` to check the exit code of commands.

I then practiced using `crontab` to schedule the script to run automatically every hour using the `0 * * * *` cron schedule.

I also practiced using `nohup script.sh &` to run a script in the background.

Finally, I used `trap` to handle signals and `logger` to send messages to the system log.

This gave me practical experience with Bash functions, arguments, exit codes, scheduled automation, background processes, signal handling, and logging.

## What I learned

The checkpoint showed how Bash functions and automation tools can make scripts more reusable and reliable.

I learned how `function_name() { }` can create reusable blocks of Bash code.

I also learned how `$1` and `$2` represent positional arguments passed to a script or function.

The `$#`, `$*`, and `$@` variables helped me understand how Bash handles multiple script arguments.

I learned how `$0` identifies the script being executed and how `$?` provides the exit code of the previous command.

I also learned how `crontab` can schedule scripts to run automatically and how `0 * * * *` schedules a task to run at the beginning of every hour.

The `nohup` command helped me understand how scripts can continue running in the background after a terminal session ends.

I learned how `trap` can handle signals and perform actions when a script receives a signal.

Finally, I learned how `logger` can send messages from scripts to the system logging service.

Most importantly, I learned how Bash functions, arguments, exit codes, cron, background execution, signal handling, and logging can be combined to create practical Linux automation.

## Evidence

Screenshots of the practical Day 29 Bash functions and automation checkpoint are stored in the `evidence/` directory.

## Related

Previous day: ../day-28-bash-scripting

Next day: ../day-30-capstone
