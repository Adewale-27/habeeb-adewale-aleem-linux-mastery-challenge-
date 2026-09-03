## Day 25 Drill

# task: Inspect running processes

command: ps aux | grep nginx

# task: Check memory usage

command: free -h

# task: Check the status of a specific service

command: systemctl status nginx

# task: View today's logs for the selected service

command: journalctl -u nginx --since today

# task: Check whether a process is alive

command: kill -0 <PID>

# task: View system uptime and load

command: uptime

# task: View system performance statistics

command: vmstat

# task: View CPU and disk I/O statistics

command: iostat

# task: Monitor a command in real time

command: watch uptime

# task: List scheduled cron jobs

command: crontab -l


