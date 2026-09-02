# Phase 5: Process & Service Management | Day 24 of 30

# Day 24: Deeper Service Management & Logs

## Today's commands

Today's checkpoint focuses on inspecting system services, identifying failed services, reloading systemd configuration, viewing service logs, filtering logs by time and priority, and following log files in real time.

The 10 commands covered today are documented in  `commands.md`.

## Today's tasks

- List all loaded service units with `systemctl list-units --type=service`
- List failed services with `systemctl list-units --state=failed`
- Reload systemd configuration with `systemctl daemon-reload`
- View system logs with `journalctl`
- Follow new journal entries in real time with `journalctl -f`
- View logs for a specific service with `journalctl -u`
- View logs since a specific time with `journalctl --since`
- Filter journal entries by error priority with `journalctl -p err`
- Follow `/var/log/syslog` in real time with `tail -f /var/log/syslog`
- Follow authentication logs in real time with `tail -f /var/log/auth.log`

## The drill

I listed every failed service on the system using `systemctl list-units --state=failed`.

I then selected a specific service and used `journalctl -u` together with `journalctl --since today` to view its logs from today.

Next, I filtered the service logs to show error-level messages only.

Finally, I followed the logs in real time for one minute to monitor new entries as they appeared.

This gave me practical experience with identifying failed services, investigating service logs, filtering system events, and monitoring logs in real time.

## What I learned

The checkpoint showed how systemd and journald work together to provide service management and centralized logging on a Linux system.

I learned how `systemctl list-units --type=service` can be used to view loaded services and how `systemctl list-units --state=failed` can quickly identify services that have failed.

I also learned how `systemctl daemon-reload` tells systemd to reload unit configuration files after changes have been made.

The `journalctl` command was useful for viewing system logs, while `journalctl -u` allowed me to focus on logs from a specific service.

I learned how `journalctl --since` can limit logs to a particular time period and how `journalctl -p err` can filter entries based on error priority.

I also practiced using `journalctl -f` and `tail -f` to follow logs as new entries are written.

Most importantly, I learned how logs can be used to investigate service problems and understand what is happening on a Linux system.

## Evidence

Screenshots of the practical Day 24 checkpoint are stored in the `evidence/` directory.

## Related

Previous day: ../day-23-systemctl-basics

Next day: ../day-25-operational-snapshot-checkpoint
