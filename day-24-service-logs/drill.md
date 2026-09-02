## Day 24 Drill

# task: List every failed service on the system

command: systemctl list-units --state=failed

# task: Pick a specific service and view its logs from today

command: journalctl -u nginx --since today

# task: Filter today's logs for the selected service to show errors only

command: journalctl -u nginx --since today -p err

# task: Follow the selected service's error logs in real time

command: journalctl -u nginx -p err -f

# task: Follow the error logs for approximately one minute

command: timeout 60 journalctl -u nginx -p err -f

# task: View all system journal entries

command: journalctl

# task: Follow the system journal in real time

command: journalctl -f

# task: Filter the journal for error-level messages

command: journalctl -p err

# task: Follow the system log file in real time

command: tail -f /var/log/syslog

# task: Follow authentication logs in real time

command: tail -f /var/log/auth.log

