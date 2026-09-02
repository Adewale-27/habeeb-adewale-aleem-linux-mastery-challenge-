
# Day 24: Deeper Service Management & Logs

1. `systemctl list-units --type=service` — Lists loaded service units.

Example:

    systemctl list-units --type=service

This displays the currently loaded service units and their states.

2. `systemctl list-units --state=failed` — Lists services that are currently in a failed state.

Example:

    systemctl list-units --state=failed

This helps identify services that failed to start or stopped unexpectedly.

3. `systemctl daemon-reload` — Reloads systemd manager configuration.

Example:

    sudo systemctl daemon-reload

This tells systemd to reload unit files after configuration changes.

4. `journalctl` — Displays logs collected by the systemd journal.

Example:

    journalctl

This displays available journal entries.

5. `journalctl -f` — Follows the journal and displays new entries as they appear.

Example:

    journalctl -f

This provides a live view of new journal entries.

6. `journalctl -u` — Displays logs for a specific systemd service.

Example:

    journalctl -u ssh

This displays journal entries related to the `ssh` service.

7. `journalctl --since` — Displays logs starting from a specified time.

Example:

    journalctl --since today

This displays journal entries created since the beginning of today.

8. `journalctl -p err` — Displays journal entries with error priority.

Example:

    journalctl -p err

This filters the journal to show error-level messages.

9. `tail -f /var/log/syslog` — Follows the system log file in real time.

Example:

    tail -f /var/log/syslog

This displays new entries added to `/var/log/syslog`.

10. `tail -f /var/log/auth.log` — Follows authentication logs in real time.

Example:

    tail -f /var/log/auth.log

This displays new authentication-related log entries as they are written.

## Example service inspection sequence

    systemctl list-units --type=service

    systemctl list-units --state=failed

    systemctl status ssh

    journalctl -u ssh

## Example log sequence

    journalctl

    journalctl -u ssh

    journalctl --since today

    journalctl -p err

    journalctl -f

## More examples

    systemctl list-units --type=service --state=running

Lists currently running services.

    systemctl list-units --state=failed

Lists services that are currently failed.

    sudo systemctl daemon-reload

Reloads systemd configuration after unit files have been changed.

    journalctl -u nginx

Displays logs for the `nginx` service.

    journalctl -u nginx --since today

Displays today's logs for the `nginx` service.

    journalctl -u nginx -p err --since today

Displays today's error-level logs for the `nginx` service.

    journalctl -p err

Displays error-level journal entries.

    journalctl -f

Follows the system journal in real time.

    tail -f /var/log/syslog

Follows the system log file in real time.

    tail -f /var/log/auth.log

Follows authentication logs in real time.

## Example drill sequence

    systemctl list-units --state=failed

    journalctl -u nginx --since today

    journalctl -u nginx --since today -p err

    journalctl -u nginx -p err -f
