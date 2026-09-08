# Day 30: Checkpoint — Capstone System Command Mastery Review

1. `ps` — Displays information about running processes.

Example:

    ps aux

This shows running processes, including process IDs, CPU usage, memory usage, and commands.

2. `systemctl` — Manages and checks system services.

Example:

    systemctl status nginx

This displays the current status of the nginx service.

3. `journalctl` — Displays and searches system logs.

Example:

    journalctl -u nginx

This displays logs related to the nginx service.

4. `ssh` — Connects to a remote server and runs commands remotely.

Example:

    ssh user@server

This opens a remote shell session on the specified server.

5. `scp` — Copies files between the local machine and a remote server.

Example:

    scp app.conf user@server:/tmp/

This transfers a file to the remote server.

6. `chmod / chown` — Changes file permissions and ownership.

Example:

    chmod 644 app.conf
    chown root:root app.conf

`chmod` changes permissions, while `chown` changes ownership.

7. `grep / awk / sed` — Searches, extracts, and modifies text.

Example:

    grep -i "error" app.log
    awk '{print $1}' app.log
    sed 's/ERROR/WARNING/g' app.log

These commands are useful for parsing and analyzing logs.

8. `find` — Searches for files and directories based on conditions.

Example:

    find /tmp -type f -mtime +7

This finds files that have not been modified for more than seven days.

9. `who / last / history` — Provides information for a basic security audit.

Example:

    who
    last
    history

These commands show current users, previous logins, and command history.

10. `cron` — Schedules commands and scripts to run automatically.

Example:

    crontab -e

    0 * * * * /home/user/health-check.sh

This schedules the health-check script to run every hour.

## Example system health-check sequence

    ps aux
    systemctl status nginx
    journalctl -u nginx

## Example remote server sequence

    ssh user@server
    ssh user@server "systemctl status nginx --no-pager"

## Example deployment sequence

    scp app.conf user@server:/tmp/
    ssh user@server "sudo mv /tmp/app.conf /etc/myapp/app.conf"
    ssh user@server "sudo chown root:root /etc/myapp/app.conf"
    ssh user@server "sudo chmod 644 /etc/myapp/app.conf"

## Example service restart sequence

    ssh user@server "sudo systemctl restart myapp"
    ssh user@server "sudo systemctl is-active myapp"

## Example log parsing sequence

    journalctl -u myapp --no-pager > myapp.log
    grep -i "error" myapp.log
    awk '{print $1, $2, $3}' myapp.log
    sed 's/ERROR/WARNING/g' myapp.log

## Example stale file cleanup sequence

    find /tmp -type f -mtime +7
    find /tmp -type f -mtime +7 -delete

## Example security audit sequence

    who
    last
    history

## Example cron sequence

    crontab -e
    0 * * * * /home/user/health-check.sh
    crontab -l

## Example full capstone sequence

    ssh user@server
    scp app.conf user@server:/tmp/
    ssh user@server "sudo mv /tmp/app.conf /etc/myapp/app.conf"
    ssh user@server "sudo chown root:root /etc/myapp/app.conf"
    ssh user@server "sudo chmod 644 /etc/myapp/app.conf"
    ssh user@server "sudo systemctl restart myapp"
    ssh user@server "sudo systemctl is-active myapp"
    ssh user@server "sudo journalctl -u myapp -n 20 --no-pager"

This sequence connects to a remote server, deploys a file, applies ownership and permissions, restarts the service, verifies its health, and checks the service logs.
