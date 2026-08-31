
# Phase 5: Process & Service Management | Day 22 of 30

# Day 22: Controlling Processes with Signals

## Today's commands

Today's checkpoint focuses on controlling running processes with signals, stopping and restarting processes, managing foreground and background jobs, suspending processes, and keeping processes running after logging out.

The 10 commands covered today are documented in  `commands.md`.

## Today's tasks

- Terminate a process with `kill`
- Forcefully terminate a process with `kill -9`
- Send a hangup signal with `kill -HUP`
- Terminate processes by name with `killall`
- Send signals to processes by name with `pkill`
- Bring a background job to the foreground with `fg`
- Resume a stopped job in the background with `bg`
- Suspend a running process with `Ctrl+Z`
- Keep a command running after logout with `nohup`
- Remove a job from the shell's job table with `disown`

## The drill

I started a long-running command in the background and used the shell job controls to manage it.

I suspended a running process using `Ctrl+Z` and then used `bg` to resume the suspended job in the background.

I then started a second long-running command using `nohup` so that it could continue running even after the terminal session was closed or I logged out.

This gave me practical experience with controlling processes, managing background jobs, and keeping processes running independently of the current shell session.

## What I learned

The checkpoint showed how Linux signals can be used to control and manage running processes.

I learned how `kill` can send signals to a process using its PID, while `kill -9` can forcefully terminate a process when a normal termination signal does not work.

I also learned how `kill -HUP` can send a hangup signal and how `killall` and `pkill` can be used to send signals to processes by name.

I practiced using `Ctrl+Z` to suspend a foreground process, `bg` to resume a stopped job in the background, and `fg` to bring a background job back to the foreground.

Another useful lesson was `nohup`, which allows a command to continue running after the terminal session ends. I also learned how `disown` can remove a job from the shell's job table.

Most importantly, I learned the difference between controlling a process directly with signals and managing shell jobs using commands such as `fg`, `bg`, and `disown`.

## Evidence

Screenshots of the practical Day 22 checkpoint are stored in the `evidence/` directory.

## Related

Previous day: ../day-21-viewing-processes

Next day: ../day-23-systemctl-basics
