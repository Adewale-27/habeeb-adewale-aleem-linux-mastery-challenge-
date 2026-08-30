
# Day 21: Viewing Processes

1. `ps aux` — Displays all running processes with detailed information.

Example:

    ps aux

This shows processes from all users along with CPU usage, memory usage, PID, and other details.

2. `ps -ef` — Displays all running processes in full-format listing.

Example:

    ps -ef

This shows process IDs, parent process IDs, users, and the commands that started the processes.

3. `ps -u` — Displays processes belonging to a specific user.

Example:

    ps -u aleem

This shows the processes currently running under the user `aleem`.

4. `top` — Displays a real-time view of running processes and system resource usage.

Example:

    top

This allows running processes to be monitored continuously.

5. `htop` — Provides an interactive process viewer.

Example:

    htop

This provides an interactive view of processes, CPU usage, memory usage, and process IDs.

6. `pgrep` — Finds the PID of a process by name.

Example:

    pgrep bash

This searches for running processes with the name `bash` and displays their PIDs.

7. `pstree` — Displays running processes in a tree structure.

Example:

    pstree

This shows the relationship between parent and child processes.

8. `lsof -i` — Displays processes using network connections and ports.

Example:

    lsof -i :80

This identifies the process using port 80.

9. `jobs` — Displays jobs running in the current shell.

Example:

    jobs

This shows background and stopped jobs associated with the current shell.

10. `nice / renice` — Starts a process with a specific priority or changes the priority of an existing process.

Example:

    nice -n 10 sleep 100

This starts the `sleep` command with a lower CPU scheduling priority.

Example:

    renice 10 -p 1234

This changes the priority of the process with PID `1234`.

## Example process sequence

    pgrep bash

    top

    pstree

    lsof -i :80

## More examples

    ps aux | grep nginx

This searches the list of running processes for `nginx`.

    ps -ef | grep ssh

This searches the full process listing for `ssh`.

    pgrep -a nginx

This displays the PID and command line for matching `nginx` processes.

    pstree -p

This displays the process tree including PIDs.

    lsof -i :80

This identifies which process is using port 80.

    jobs

This displays background and stopped jobs in the current shell.

    nice -n 10 command

This starts a command with a lower scheduling priority.

    renice 10 -p 1234

This changes the priority of an existing process.

## Example drill sequence

    pgrep nginx

    top

    pstree -p

    lsof -i :80
