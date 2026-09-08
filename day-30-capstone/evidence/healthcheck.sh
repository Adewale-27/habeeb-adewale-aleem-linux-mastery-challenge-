#!/bin/bash

# ============================================================
# DAY 30 CAPSTONE
# Deploy a file, restart a service, verify health, and log run
# ============================================================

# 1. Configuration
LOG_FILE="deploy.log"

REMOTE_USER="ubuntu"
REMOTE_HOST="52.49.152.160"
LOCAL_FILE="app.conf"
REMOTE_FILE="/home/ubuntu/app.conf"
SERVICE="ssh"

# 2. Start logging
echo "========================================" | tee -a "$LOG_FILE"
echo "Deployment started: $(date)" | tee -a "$LOG_FILE"
echo "========================================" | tee -a "$LOG_FILE"

# 3. Test SSH connection
echo "Testing SSH connection..." | tee -a "$LOG_FILE"

if ssh "$REMOTE_USER@$REMOTE_HOST" "hostname"; then
    echo "SSH connection successful" | tee -a "$LOG_FILE"
else
    echo "SSH connection failed" | tee -a "$LOG_FILE"
    exit 1
fi

# 4. Deploy the file with SCP
echo "Deploying $LOCAL_FILE..." | tee -a "$LOG_FILE"

if scp "$LOCAL_FILE" "$REMOTE_USER@$REMOTE_HOST:$REMOTE_FILE"; then
    echo "File deployed successfully" | tee -a "$LOG_FILE"
else
    echo "File deployment failed" | tee -a "$LOG_FILE"
    exit 1
fi

# 5. Set file permissions
echo "Setting permissions..." | tee -a "$LOG_FILE"

if ssh "$REMOTE_USER@$REMOTE_HOST" "chmod 644 $REMOTE_FILE"; then
    echo "Permissions set to 644" | tee -a "$LOG_FILE"
else
    echo "Failed to set permissions" | tee -a "$LOG_FILE"
    exit 1
fi

# 6. Set file ownership
echo "Setting ownership..." | tee -a "$LOG_FILE"

if ssh "$REMOTE_USER@$REMOTE_HOST" \
    "sudo chown $REMOTE_USER:$REMOTE_USER $REMOTE_FILE"; then
    echo "Ownership set successfully" | tee -a "$LOG_FILE"
else
    echo "Failed to set ownership" | tee -a "$LOG_FILE"
    exit 1
fi

# 7. Verify deployed file
echo "Verifying deployed file..." | tee -a "$LOG_FILE"

ssh "$REMOTE_USER@$REMOTE_HOST" "ls -l $REMOTE_FILE" \
    | tee -a "$LOG_FILE"

# 8. Restart the service
echo "Restarting $SERVICE..." | tee -a "$LOG_FILE"

if ssh "$REMOTE_USER@$REMOTE_HOST" \
    "sudo systemctl restart $SERVICE"; then
    echo "$SERVICE restarted successfully" | tee -a "$LOG_FILE"
else
    echo "Failed to restart $SERVICE" | tee -a "$LOG_FILE"
    exit 1
fi

# 9. Check service health
echo "Checking $SERVICE health..." | tee -a "$LOG_FILE"

if ssh "$REMOTE_USER@$REMOTE_HOST" \
    "systemctl is-active --quiet $SERVICE"; then
    echo "$SERVICE is healthy" | tee -a "$LOG_FILE"
else
    echo "$SERVICE is NOT healthy" | tee -a "$LOG_FILE"
    exit 1
fi

# 10. Check recent journal logs
echo "Checking recent $SERVICE logs..." | tee -a "$LOG_FILE"

ssh "$REMOTE_USER@$REMOTE_HOST" \
    "sudo journalctl -u $SERVICE --since '5 minutes ago' --no-pager" \
    | tee -a "$LOG_FILE"

# 11. Parse logs with grep, awk, and sed
echo "Parsing service logs..." | tee -a "$LOG_FILE"

ssh "$REMOTE_USER@$REMOTE_HOST" \
    "sudo journalctl -u $SERVICE --since '5 minutes ago' --no-pager" \
    | grep -i "ssh" \
    | awk '{print $1, $2, $3}' \
    | sed 's/ssh/SSH/g' \
    | tee -a "$LOG_FILE"

# 12. Finish
echo "========================================" | tee -a "$LOG_FILE"
echo "Deployment completed successfully: $(date)" | tee -a "$LOG_FILE"
echo "========================================" | tee -a "$LOG_FILE"
