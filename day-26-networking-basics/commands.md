# Day 26: Networking Basics

1. `ip a` — Displays network interfaces and assigned IP addresses.

Example:

    ip a

This shows available network interfaces, their state, MAC addresses, and assigned IPv4 and IPv6 addresses.

2. `ip route` — Displays the system's routing table.

Example:

    ip route

This shows available routes and identifies the default gateway used for network traffic.

3. `ping -c` — Tests network connectivity to a remote host.

Example:

    ping -c 4 8.8.8.8

This sends four ICMP packets to the destination and displays the connectivity results.

4. `curl` — Transfers data from a URL.

Example:

    curl https://example.com

This retrieves content from the specified URL.

5. `curl -I` — Retrieves HTTP response headers without downloading the response body.

Example:

    curl -I https://example.com

This displays information such as the HTTP status code, content type, server information, and other HTTP headers.

6. `wget` — Downloads content from a URL.

Example:

    wget https://example.com

This retrieves the specified resource and saves it to the current directory when appropriate.

7. `netstat -tulnp` — Displays listening TCP and UDP ports and the processes using them.

Example:

    netstat -tulnp

This helps identify network services that are currently listening for incoming connections.

8. `ss -tulnp` — Displays listening TCP and UDP sockets.

Example:

    ss -tulnp

This provides information about listening network sockets and the processes associated with them.

9. `hostname` — Displays the system's hostname.

Example:

    hostname

This shows the name assigned to the current Linux machine.

10. `hostnamectl` — Displays detailed hostname and system information.

Example:

    hostnamectl

This shows the system's static hostname and additional information managed by systemd.

## Example network inspection sequence

    ip a

    ip route

    hostname

    hostnamectl

## Example connectivity test sequence

    ping -c 4 8.8.8.8

    ping -c 4 example.com

## Example URL inspection sequence

    curl https://example.com

    curl -I https://example.com

## Example download sequence

    wget https://example.com

## Example port inspection sequence

    netstat -tulnp

    ss -tulnp

## Example hostname inspection sequence

    hostname

    hostnamectl

## Example networking checkpoint sequence

    ip a

    ip route

    ping -c 4 8.8.8.8

    curl -I https://example.com

    netstat -tulnp

    ss -tulnp

    hostname

    hostnamectl

