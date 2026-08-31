## Day 22 Drill

# task: Start a long-running command in the background

command: sleep 300 &

# task: View the background jobs

command: jobs

# task: Start a long-running command in the foreground

command: sleep 600

# task: Suspend the running foreground command

command: Ctrl+Z

# task: View the suspended job

command: jobs

# task: Resume the suspended job in the background

command: bg %2

# task: View the running background jobs

command: jobs

# task: Bring the background job back to the foreground

command: fg %2

# task: Start a second long-running command that survives logout

command: nohup sleep 1000 &

# task: View the background jobs

command: jobs

# task: Remove the nohup job from the shell's job table

command: disown %3

