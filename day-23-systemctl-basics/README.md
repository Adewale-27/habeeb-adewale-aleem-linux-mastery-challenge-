
# Phase 5: Process & Service Management | Day 23 of 30

# Day 23: Init Systems & systemctl Basics

## Today's commands

Today's checkpoint focuses on managing Linux services with systemctl, starting and stopping services, restarting and reloading services, enabling services at boot, and checking their active and enabled states.

The 10 commands covered today are documented in  `commands.md`.

## Today's tasks

- Start a service with `systemctl start`
- Stop a service with `systemctl stop`
- Restart a service with `systemctl restart`
- Reload a service with `systemctl reload`
- Enable a service to start at boot with `systemctl enable`
- Disable a service from starting at boot with `systemctl disable`
- Enable and start a service with `systemctl enable --now`
- Check service status with `systemctl status`
- Check whether a service is active with `systemctl is-active`
- Check whether a service is enabled with `systemctl is-enabled`

## The drill
I first check if `systemd` is running and the version of `systemctl` 

I picked a service and used `systemctl stop` to stop it.

I then used `systemctl is-active` to confirm that the service was inactive.

Next, I restarted the service using `systemctl restart` and enabled it to automatically start at boot using `systemctl enable --now`.

Finally, I used `systemctl is-active` and `systemctl is-enabled` to confirm that the service was both active and enabled.

This gave me practical experience with controlling Linux services and checking their current and boot-time states.

## What I learned

The checkpoint showed how systemd manages services on a Linux system and how `systemctl` provides a consistent way to control them.

I learned how `systemctl start` and `systemctl stop` can be used to start and stop services, while `systemctl restart` can stop and start a service again when changes need to take effect.

I also learned that `systemctl reload` can reload a service's configuration without completely stopping the service when the service supports reloading.

The `systemctl enable` command configures a service to start automatically at boot, while `systemctl disable` prevents it from automatically starting at boot.

I also learned that `systemctl enable --now` can enable a service for automatic startup and start it immediately.

Most importantly, I practiced using `systemctl status`, `systemctl is-active`, and `systemctl is-enabled` to verify both the current running state and the boot-time configuration of a service.

## Evidence

Screenshots of the practical Day 23 checkpoint are stored in the `evidence/` directory.

## Related

Previous day: ../day-22-process-signals

Next day: ../day-24-service-logs
