# Day 22: Controlling Processes with Signals

1. `kill` — Sends a signal to a process using its PID.

Example:

    kill 1234

This sends the default termination signal to the process with PID `1234`.

2. `kill -9` — Forcefully terminates a process.

Example:

    kill -9 1234

This sends SIGKILL to the process and forces it to terminate.

3. `kill -HUP` — Sends a hangup signal to a process.

Example:

    kill -HUP 1234

This sends SIGHUP to the process and can be used to request that some services reload their configuration.

4. `killall` — Sends a signal to processes by name.

Example:

    killall sleep

This terminates processes named `sleep`.

5. `pkill` — Sends a signal to processes matching a name or pattern.

Example:

    pkill sleep

This terminates processes matching the name `sleep`.

6. `fg` — Brings a background or stopped job to the foreground.

Example:

    fg %1

This brings job number 1 to the foreground.

7. `bg` — Resumes a stopped job in the background.

Example:

    bg %1

This resumes job number 1 in the background.

8. `Ctrl+Z` — Suspends the currently running foreground process.

Example:

    sleep 300

Press:

    Ctrl+Z

This suspends the running `sleep` command and returns control to the shell.

9. `nohup` — Runs a command so it can continue after the terminal session ends.

Example:

    nohup sleep 300 &

This starts `sleep` in the background and allows it to continue after logout.

10. `disown` — Removes a job from the shell's job table.

Example:

    disown %1

This removes job number 1 from the current shell's job table.

## Example process control sequence

    sleep 300

    Ctrl+Z

    bg %1

    jobs

    fg %1

## Example nohup sequence

    nohup sleep 600 &

    jobs

    disown %1

## More examples

    kill 1234

Sends the default termination signal to process 1234.

    kill -9 1234

Forcefully terminates process 1234.

    kill -HUP 1234

Sends a hangup signal to process 1234.

    killall sleep

Terminates processes named `sleep`.

    pkill sleep

Terminates processes matching `sleep`.

    jobs

Displays the background and stopped jobs in the current shell.

    fg %1

Brings job 1 to the foreground.

    bg %1

Resumes job 1 in the background.

    nohup sleep 1000 &

Starts a long-running command that can survive the terminal session ending.

    disown %1

Removes job 1 from the shell's job table.

## Example drill sequence

    sleep 300 &

    jobs

    sleep 600

    Ctrl+Z

    bg %2

    jobs

    nohup sleep 1000 &

    jobs

    disown %3

