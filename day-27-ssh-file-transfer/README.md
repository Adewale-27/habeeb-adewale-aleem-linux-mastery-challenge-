# Phase 6: Networking, Scripting & SSH Mastery | Day 27 of 30

# Day 27: Remote Access & File Transfer

## Today's commands

Today's checkpoint focuses on connecting to remote Linux systems, using SSH authentication, generating SSH keys, securely transferring files, synchronizing directories, configuring SSH connections, and reviewing basic SSH server hardening.

The 10 commands covered today are documented in `commands.md`.

## Today's tasks

- Connect to a remote server with `ssh`
- Connect using a specific SSH port with `ssh -p`
- Connect using a private key with `ssh -i`
- Generate an SSH key pair with `ssh-keygen`
- Copy a public key to a remote server with `ssh-copy-id`
- Securely copy files with `scp`
- Transfer files interactively with `sftp`
- Synchronize files with `rsync`
- Configure SSH connections with `~/.ssh/config`
- Review SSH server hardening with `sshd_config`

## The drill

I first generated an SSH key pair using `ssh-keygen` to create a public and private key for secure authentication.

I then copied my public key to a remote host using `ssh-copy-id` so that I could connect using key-based authentication without entering a password each time.

Next, I connected to the remote server using `ssh` and practiced connecting through a specific SSH port using `ssh -p`.

I also practiced using `ssh -i` to specify the private key used to authenticate with the remote server.

I then used `scp` to securely copy files between my local machine and the remote server.

I practiced using `sftp` for interactive file transfers and used `rsync` to synchronize files between systems.

Finally, I reviewed `~/.ssh/config` for configuring reusable SSH connections and examined basic SSH server hardening settings in `sshd_config`.

This gave me practical experience with remote Linux access, SSH key authentication, secure file transfer, and SSH configuration.

## What I learned

The checkpoint showed how SSH and related Linux tools can be combined to securely access remote systems and transfer files.

I learned how `ssh` can be used to establish a secure remote shell connection to another Linux machine.

I also learned how `ssh -p` can be used to connect to an SSH service running on a specific port and how `ssh -i` can specify the private key used for authentication.

The `ssh-keygen` command was useful for generating a public and private SSH key pair.

I learned how `ssh-copy-id` can copy a public key to a remote server and enable key-based authentication.

I practiced using `scp` to securely transfer files between local and remote systems.

The `sftp` command provided an interactive way to transfer files over an SSH connection.

I also learned how `rsync` can efficiently synchronize files and directories between systems.

The `~/.ssh/config` file helped me understand how SSH connection settings such as hostnames, usernames, ports, and identity files can be configured for easier access.

Finally, I learned how `sshd_config` contains important SSH server settings that can be used to control remote access and improve server security.

Most importantly, I learned how SSH tools can be combined to securely connect to remote Linux systems, authenticate with SSH keys, and transfer files between machines.

## Evidence

Screenshots of the practical Day 27 SSH and file transfer checkpoint are stored in the `evidence/` directory.

## Related

Previous day: ../day-26-networking-basics

Next day: ../day-28-bash-scripting
