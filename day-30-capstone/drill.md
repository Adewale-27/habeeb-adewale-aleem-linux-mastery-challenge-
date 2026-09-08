# 1. Check running processes
ps aux

# 2. Check a service
systemctl status ssh --no-pager

# 3. Check recent service logs
journalctl -u ssh -n 20 --no-pager

# 4. Connect to a remote server
ssh ubuntu@52.49.152.160

# 5. Run a remote command
ssh ubuntu@52.49.152.160 "systemctl status ssh --no-pager"

# 6. Copy a file to the remote server
scp app.conf ubuntu@52.49.152.160:/tmp/

# 7. Set file permissions
ssh ubuntu@52.49.152.160 "chmod 644 /tmp/app.conf"

# 8. Set file ownership
ssh ubuntu@52.49.152.160 "sudo chown ubuntu:ubuntu /tmp/app.conf"

# 9. Verify the deployed file
ssh ubuntu@52.49.152.160 "ls -l /tmp/app.conf"

# 10. Restart the service
ssh ubuntu@52.49.152.160 "sudo systemctl restart ssh"

# 11. Check service health
ssh ubuntu@52.49.152.160 "systemctl is-active ssh"

# 12. Check recent service logs
ssh ubuntu@52.49.152.160 "sudo journalctl -u ssh --since '5 minutes ago' --no-pager"

# 13. Search logs for errors
journalctl -u ssh --no-pager | grep -i error

# 14. Parse log fields with awk
journalctl -u ssh --no-pager | awk '{print $1, $2, $3}'

# 15. Replace text with sed
journalctl -u ssh --no-pager | sed 's/ssh/SSH/g'

# 16. Find stale files
find /tmp -type f -mtime +7

# 17. Security audit — current users
who

# 18. Security audit — login history
last

# 19. Security audit — command history
history

# 20. Schedule an hourly health check
crontab -e

# 21. Hourly cron entry
0 * * * * /home/aleem/healthcheck.sh

# 22. View scheduled jobs
crontab -l

# 23. Run a script in the background
nohup ./healthcheck.sh &

# 24. View background process
ps aux | grep healthcheck.sh
