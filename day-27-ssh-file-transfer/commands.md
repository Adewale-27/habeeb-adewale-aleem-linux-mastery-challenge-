# Day 27: Remote Access & File Transfer

1. `ssh` — Connects securely to a remote Linux server.

Example:

    ssh user@remote-host

This establishes a secure remote shell connection to the specified host.

2. `ssh -p` — Connects to an SSH server using a specific port.

Example:

    ssh -p 2222 user@remote-host

This is useful when the SSH service is running on a non-standard port.

3. `ssh -i` — Connects using a specific private key.

Example:

    ssh -i ~/.ssh/id_ed25519 user@remote-host

This specifies the private key that SSH should use for authentication.

4. `ssh-keygen` — Generates an SSH public and private key pair.

Example:

    ssh-keygen -t ed25519

This creates a key pair that can be used for secure key-based authentication.

5. `ssh-copy-id` — Copies a public SSH key to a remote server.

Example:

    ssh-copy-id user@remote-host

This installs the public key on the remote server so that key-based authentication can be used.

6. `scp` — Securely copies files between systems using SSH.

Example:

    scp file.txt user@remote-host:/home/user/

This securely transfers a file from the local machine to the remote server.

7. `sftp` — Provides an interactive secure file transfer session.

Example:

    sftp user@remote-host

This allows files to be uploaded, downloaded, renamed, and managed over an SSH connection.

8. `rsync` — Synchronizes files and directories between systems.

Example:

    rsync -avz ./local-dir/ user@remote-host:/home/user/

This efficiently transfers files and only updates data that has changed.

9. `~/.ssh/config` — Stores reusable SSH client connection settings.

Example:

    nano ~/.ssh/config

This can be used to configure hostnames, usernames, ports, and identity files for easier SSH connections.

10. `sshd_config` — Contains SSH server configuration settings.

Example:

    sudo nano /etc/ssh/sshd_config

This file can be used to configure SSH server authentication, ports, user access, and other security settings.

## Example SSH key generation sequence

    ssh-keygen -t ed25519

    ssh-copy-id user@remote-host

    ssh user@remote-host

## Example remote connection sequence

    ssh user@remote-host

    ssh -p 2222 user@remote-host

    ssh -i ~/.ssh/id_ed25519 user@remote-host

## Example file transfer sequence

    scp file.txt user@remote-host:/home/user/

    scp user@remote-host:/home/user/file.txt .

    sftp user@remote-host

## Example synchronization sequence

    rsync -avz ./local-dir/ user@remote-host:/home/user/

## Example SSH configuration sequence

    nano ~/.ssh/config

    ssh user@remote-host

## Example SSH hardening sequence

    sudo nano /etc/ssh/sshd_config

## Example networking and SSH checkpoint sequence

    ssh-keygen -t ed25519

    ssh-copy-id user@remote-host

    ssh user@remote-host

    scp file.txt user@remote-host:/home/user/

    sftp user@remote-host

    rsync -avz ./local-dir/ user@remote-host:/home/user/
