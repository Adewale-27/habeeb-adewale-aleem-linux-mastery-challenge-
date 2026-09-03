# Phase 5: Process & Service Management | Day 25 of 30

# Day 25: Process & Service Checkpoint

## Today's commands

Today's checkpoint focuses on inspecting running processes, checking memory usage, verifying service status, reviewing service logs, checking process liveness, viewing system uptime, monitoring system performance, checking disk I/O, watching commands in real time, and inspecting scheduled cron jobs.

The 10 commands covered today are documented in `commands.md`.

## Today's tasks

- Inspect running processes with `ps aux | grep`
- Check memory usage with `free -h`
- Check the status of a systemd service with `systemctl status`
- View service logs with `journalctl -u <svc> --since today`
- Check whether a process is alive with `kill -0`
- View system uptime with `uptime`
- Monitor system activity with `vmstat`
- Monitor CPU and disk I/O with `iostat`
- Repeatedly run a command with `watch`
- View scheduled cron jobs with `crontab -l`

## The drill

I built a one-screen operational snapshot of a Linux server covering uptime, memory usage, the status of three key services, recent service logs, and scheduled cron jobs.

I first inspected running processes using `ps aux | grep` and identified relevant processes.

I then used `free -h` and `uptime` to inspect memory usage, system uptime, and load information.

Next, I checked the status of three system services using `systemctl status` and reviewed the logs for a selected service using `journalctl -u <svc> --since today`.

I also practiced using `kill -0` as a liveness check without terminating the process.

Finally, I used `vmstat`, `iostat`, and `watch` to monitor system performance and used `crontab -l` to inspect scheduled jobs.

This gave me practical experience with creating a quick operational view of a Linux server and identifying potential process, service, resource, and scheduling issues.

## What I learned

The checkpoint showed how different Linux tools can be combined to create a practical operational snapshot of a server.

I learned how `ps aux` can be used to inspect running processes and how `free -h` provides a human-readable view of memory usage.

I also learned how `systemctl status` can be used to inspect the current state of a systemd service and how `journalctl -u <svc> --since today` can be used to investigate recent service activity.

The `kill -0` command was useful for checking whether a process is alive without actually terminating it.

I learned how `uptime` provides information about system uptime, logged-in users, and load averages.

I also practiced using `vmstat` to monitor system performance and `iostat` to inspect CPU and disk I/O activity.

The `watch` command allowed me to repeatedly execute a command and observe changes in real time.

Finally, I learned how `crontab -l` can be used to inspect scheduled cron jobs for the current user.

Most importantly, I learned how these commands can be combined to quickly assess the operational health of a Linux server.

## Evidence

Screenshots of the practical Day 25 checkpoint are stored in the `evidence/` directory.

## Related

Previous day: ../day-24-service-logs

Next day: ../day-26-networking-basics
