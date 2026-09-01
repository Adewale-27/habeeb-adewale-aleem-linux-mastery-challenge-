
# Day 23: Init Systems & systemctl Basics

1. `systemctl start` — Starts a systemd service.

Example:

    sudo systemctl start nginx

This starts the `nginx` service.

2. `systemctl stop` — Stops a running systemd service.

Example:

    sudo systemctl stop nginx

This stops the `nginx` service.

3. `systemctl restart` — Stops and starts a service again.

Example:

    sudo systemctl restart nginx

This restarts the `nginx` service.

4. `systemctl reload` — Reloads a service's configuration without fully restarting it when supported.

Example:

    sudo systemctl reload nginx

This asks the `nginx` service to reload its configuration.

5. `systemctl enable` — Configures a service to start automatically at boot.

Example:

    sudo systemctl enable nginx

This enables `nginx` to start automatically when the system boots.

6. `systemctl disable` — Prevents a service from starting automatically at boot.

Example:

    sudo systemctl disable nginx

This disables automatic startup for `nginx`.

7. `systemctl enable --now` — Enables a service at boot and starts it immediately.

Example:

    sudo systemctl enable --now nginx

This enables `nginx` to start at boot and starts it immediately.

8. `systemctl status` — Displays the current status of a service.

Example:

    systemctl status nginx

This shows whether `nginx` is running and provides recent service information.

9. `systemctl is-active` — Checks whether a service is currently active.

Example:

    systemctl is-active nginx

This returns `active` when the service is currently running.

10. `systemctl is-enabled` — Checks whether a service is enabled to start at boot.

Example:

    systemctl is-enabled nginx

This returns `enabled` when the service is configured to start automatically at boot.

## Example systemctl sequence

    sudo systemctl stop nginx

    systemctl is-active nginx

    sudo systemctl restart nginx

    sudo systemctl enable --now nginx

    systemctl is-active nginx

    systemctl is-enabled nginx

## More examples

    sudo systemctl start ssh

Starts the SSH service.

    sudo systemctl stop ssh

Stops the SSH service.

    sudo systemctl restart ssh

Restarts the SSH service.

    sudo systemctl reload ssh

Reloads the SSH service configuration when supported.

    sudo systemctl enable ssh

Enables SSH to start automatically at boot.

    sudo systemctl disable ssh

Disables SSH from starting automatically at boot.

    sudo systemctl enable --now ssh

Enables SSH at boot and starts it immediately.

    systemctl status ssh

Displays the current status of the SSH service.

    systemctl is-active ssh

Checks whether the SSH service is currently active.

    systemctl is-enabled ssh

Checks whether the SSH service is enabled at boot.

## Example combined command

    sudo systemctl stop nginx && systemctl is-active nginx && sudo systemctl restart nginx && sudo systemctl enable --now nginx && systemctl is-active nginx && systemctl is-enabled nginx
