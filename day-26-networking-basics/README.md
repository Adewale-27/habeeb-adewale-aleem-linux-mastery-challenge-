# Phase 6: Networking, Scripting & SSH Mastery | Day 26 of 30

# Day 26: Networking Basics

## Today's commands

Today's checkpoint focuses on inspecting network interfaces, checking routing information, testing network connectivity, retrieving web content, inspecting HTTP headers, downloading files, checking listening ports, and viewing system hostname information.

The 10 commands covered today are documented in `commands.md`.

## Today's tasks

- Inspect network interfaces with `ip a`
- Check the routing table with `ip route`
- Test network connectivity with `ping -c`
- Fetch content from a URL with `curl`
- Fetch HTTP headers with `curl -I`
- Download content with `wget`
- List listening ports with `netstat -tulnp`
- List listening sockets with `ss -tulnp`
- View the system hostname with `hostname`
- View detailed hostname information with `hostnamectl`

## The drill

I first identified my machine's IP address using `ip a` and inspected the routing table using `ip route` to identify the default gateway.

I then tested connectivity to a public host using `ping -c` to verify that the machine could communicate over the network.

Next, I used `curl` to fetch content from a URL and `curl -I` to inspect HTTP response headers without retrieving the full page content.

I also practiced using `wget` to download content from a remote URL.

Finally, I used `netstat -tulnp` and `ss -tulnp` to inspect listening network ports and sockets, and used `hostname` and `hostnamectl` to inspect the system's hostname information.

This gave me practical experience with identifying network configuration, testing connectivity, inspecting network services, and understanding how a Linux system connects to and identifies itself on a network.

## What I learned

The checkpoint showed how different Linux networking tools can be combined to create a practical view of a machine's network configuration and connectivity.

I learned how `ip a` can be used to inspect network interfaces and identify assigned IP addresses.

I also learned how `ip route` displays the routing table and helps identify the default gateway used by the system.

The `ping -c` command was useful for testing connectivity to a remote host and confirming that network communication was working.

I learned how `curl` can be used to retrieve content from a URL and how `curl -I` can be used to inspect HTTP response headers.

I also practiced using `wget` to download content from a remote URL.

The `netstat -tulnp` and `ss -tulnp` commands helped me inspect TCP and UDP ports and identify services that are currently listening for network connections.

Finally, I learned how `hostname` displays the system hostname and how `hostnamectl` provides detailed hostname and system information.

Most importantly, I learned how these commands can be combined to quickly inspect network configuration, test connectivity, and identify services listening on a Linux server.

## Evidence

Screenshots of the practical Day 26 networking checkpoint are stored in the `evidence/` directory.

## Related

Previous day: ../day-25-operational-snapshot-checkpoint

Next day: ../day-27-ssh-file-transfer
