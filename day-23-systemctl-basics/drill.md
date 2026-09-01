## Day 23 Drill

# task: Stop a service

command: sudo systemctl stop nginx

# task: Confirm that the service is inactive

command: systemctl is-active nginx

# task: Restart the service

command: sudo systemctl restart nginx

# task: Enable the service to start automatically at boot and start it immediately

command: sudo systemctl enable --now nginx

# task: Confirm that the service is active

command: systemctl is-active nginx

# task: Confirm that the service is enabled at boot

command: systemctl is-enabled nginx

# task: Check the complete status of the service

command: systemctl status nginx

# task: Complete the entire checkpoint in one combined command

command: sudo systemctl stop nginx && systemctl is-active nginx && sudo systemctl restart nginx && sudo systemctl enable --now nginx && systemctl is-active nginx && systemctl is-enabled nginx


