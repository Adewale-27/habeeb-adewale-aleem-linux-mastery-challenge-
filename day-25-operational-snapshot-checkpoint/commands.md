
# Day 25: Operational Snapshot Checkpoint

1. `ps aux | grep` — Searches the process list for a specific process.

Example:

    ps aux | grep nginx

This displays running processes matching the specified name.

2. `free -h` — Displays memory usage in human-readable format.

Example:

    free -h

This shows total, used, free, shared, cached, and available memory.

3. `systemctl status <svc>` — Displays the current status of a systemd service.

Example:

    systemctl status nginx

This shows whether the service is running, stopped, failed, or otherwise inactive.

4. `journalctl -u <svc> --since today` — Displays today's logs for a specific service.

Example:

    journalctl -u nginx --since today

This helps investigate recent service activity and errors.

5. `kill -0 <pid>` — Checks whether a process is alive without terminating it.

Example:

    kill -0 1234

This checks whether the process exists and whether the current user has permission to signal it.

6. `uptime` — Displays how long the system has been running.

Example:

    uptime

This also displays the number of logged-in users and system load averages.

7. `vmstat` — Reports virtual memory and system performance statistics.

Example:

    vmstat

This provides information about processes, memory, paging, block I/O, interrupts, context switches, and CPU activity.

8. `iostat` — Reports CPU and input/output statistics.

Example:

    iostat

This provides information about CPU utilization and disk/device I/O activity.

9. `watch` — Repeatedly executes a command and displays its output.

Example:

    watch uptime

This is useful for monitoring changing system information in real time.

10. `crontab -l` — Lists scheduled cron jobs for the current user.

Example:

    crontab -l

This displays the user's configured scheduled tasks.

## Example process inspection sequence

    ps aux | grep nginx

    ps aux | grep ssh

    ps aux | grep cron

## Example service inspection sequence

    systemctl status nginx

    systemctl status ssh

    systemctl status cron

## Example log inspection sequence

    journalctl -u nginx --since today

    journalctl -u ssh --since today

    journalctl -u cron --since today

## Example resource monitoring sequence

    uptime

    free -h

    vmstat

    iostat

## Example liveness check

    ps aux | grep nginx

    kill -0 <PID>

The `kill -0` command checks whether a process is alive without terminating the process.

## Example monitoring sequence

    watch uptime

    watch free -h

    watch systemctl status nginx --no-pager

## Example cron inspection

    crontab -l

Lists the current user's scheduled cron jobs.

To edit the user's cron jobs:

    crontab -e

## Example operational snapshot sequence

    uptime

    free -h

    systemctl status nginx --no-pager

    systemctl status ssh --no-pager

    systemctl status cron --no-pager

    journalctl -u nginx --since today --no-pager -n 10

    crontab -l
