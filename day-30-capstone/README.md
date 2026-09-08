# Phase 6: Networking, Scripting & SSH Mastery | Day 30 of 30

# Day 30: Capstone — Full System Command Mastery Review

## Today's commands

Today's checkpoint focuses on bringing together the Linux commands and skills covered throughout the 30-Day Linux Mastery Challenge.

The capstone combines system health checks, process and service management, log analysis, SSH remote access, secure file deployment, permissions and ownership, file cleanup, security auditing, cron automation, and the complete command journal.

The 10 tasks covered today are documented in `commands.md`.

## Today's tasks

- Build a full system health-check script
- Combine `ps`, `systemctl`, and `journalctl` in one report
- SSH into a remote host and run a command
- Use `scp` to deploy a file
- Apply `chmod` and `chown` to deployed files
- Schedule the health check with cron
- Parse logs with `grep`, `awk`, and `sed`
- Use `find` to clean up stale files
- Run a security audit with `last`, `who`, and `history`
- Present the complete 300-command journal for review

## The drill

I first built a Bash health-check script that brings together several commands from the challenge to inspect the state of a Linux system.

I combined `ps`, `systemctl`, and `journalctl` to create a report containing information about running processes, service status, and recent service logs.

Next, I connected to a remote Linux host using `ssh` and practiced running commands remotely.

I then used `scp` to deploy a file to the remote server and applied the correct ownership and permissions using `chown` and `chmod`.

After deploying the file, I restarted the relevant service and verified that it was running correctly using `systemctl`.

I also used `journalctl` to inspect the service logs and confirm that the restart and deployment completed successfully.

Next, I practiced using `grep`, `awk`, and `sed` to search, filter, and process information from log files.

I used `find` to identify stale files that could be safely cleaned up and scheduled the health-check script to run automatically using cron.

Finally, I performed a basic security audit using `last`, `who`, and `history`, and reviewed the complete 300-command journal from the challenge.

This gave me practical experience combining Linux commands into a complete administration and deployment workflow.

## What I learned

The final checkpoint showed how individual Linux commands can be combined to solve larger system administration tasks.

I learned how to build a health-check script that brings together process information, service status, and system logs into a single report.

I also learned how `ps`, `systemctl`, and `journalctl` can work together to investigate the health of processes and services.

Using `ssh` and `scp` helped me practice remote administration and secure file deployment.

I learned how `chmod` and `chown` can be used together to ensure deployed files have the correct permissions and ownership.

I also practiced restarting services with `systemctl` and verifying their health using both `systemctl` and `journalctl`.

The combination of `grep`, `awk`, and `sed` helped me understand how Linux administrators can search, filter, and transform log information.

I learned how `find` can be used to locate stale files and assist with system cleanup.

The security audit using `last`, `who`, and `history` showed how basic Linux commands can provide useful information about user activity and system access.

Finally, I learned how cron can automate recurring health checks and how documenting the commands used throughout the challenge creates a useful Linux administration reference.

Most importantly, I learned that Linux mastery is not about memorizing individual commands. It is about knowing how to combine commands into reliable workflows that solve real administration, troubleshooting, deployment, security, and automation tasks.

## Evidence

Screenshots of the practical Day 30 capstone project and final Linux command mastery review are stored in the `evidence/` directory.

The script is also inside the evidence folder
## Related

Previous day: ../day-29-functions-automation

Challenge completed: 30-Day Linux Mastery Challenge
