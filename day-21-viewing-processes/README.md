
# Phase 5: Process & Service Management | Day 21 of 30

# Day 21: Viewing Processes

## Today's commands

Today's checkpoint focuses on viewing running processes, finding processes by name, monitoring system activity, viewing process trees, identifying processes using network ports, managing background jobs, and adjusting process priority.

The 10 commands covered today are documented in  `commands.md`.

## Today's tasks

- View all running processes with `ps aux`
- View processes in full-format listing with `ps -ef`
- View processes for a specific user with `ps -u`
- Monitor running processes with `top`
- Monitor processes interactively with `htop`
- Find a process by name with `pgrep`
- Display processes as a tree with `pstree`
- Identify processes using network ports with `lsof -i`
- View background jobs with `jobs`
- Adjust process priority with `nice` and `renice`

## The drill

I searched for a running process by name and used `pgrep` to identify its PID.

I then used `top` to view the running process and monitored its activity.

Next, I used `pstree` to show the process as part of the system's process tree.

Finally, I used `lsof -i` to identify which process was using port 80.

This gave me practical experience with finding and inspecting running processes from the Linux terminal.

## What I learned

The checkpoint showed how Linux provides several commands for viewing and monitoring processes running on a system.

I learned how `ps aux` and `ps -ef` can display detailed information about running processes, while `ps -u` can be used to view processes belonging to a specific user.

I also learned how `top` provides a live view of running processes and system resource usage. `htop` provides an interactive alternative that makes it easier to view and manage processes.

The `pgrep` command was useful for finding the PID of a process by its name, while `pstree` showed how processes are related to their parent and child processes.

I also practiced using `lsof -i` to identify processes associated with network connections and ports.

Another useful lesson was understanding background jobs with `jobs` and learning that `nice` and `renice` can be used to control the priority of processes.

Most importantly, I learned how to identify and inspect running processes from different perspectives instead of relying on a single command.

## Evidence

Screenshots of the practical Day 21 checkpoint are stored in the `evidence/` directory.

## Related

Previous day: ../day-20-text-processing-checkpoint

Next day: ../day-22-process-signals
