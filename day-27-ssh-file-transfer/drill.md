## Day 27 Drill

# task: Generate an SSH key pair

command: ssh-keygen -t ed25519

# task: Connect to a remote server

command: ssh user@remote-host

# task: Connect to a remote server using a specific port

command: ssh -p 2222 user@remote-host

# task: Connect using a specific private key

command: ssh -i ~/.ssh/id_ed25519 user@remote-host

# task: Copy the public key to a remote host

command: ssh-copy-id user@remote-host

# task: Securely copy a file to a remote server

command: scp file.txt user@remote-host:/home/user/

# task: Securely copy a file from a remote server

command: scp user@remote-host:/home/user/file.txt .

# task: Start an interactive SFTP session

command: sftp user@remote-host

# task: Synchronize files with a remote server

command: rsync -avz ./local-dir/ user@remote-host:/home/user/

# task: Configure a reusable SSH connection

command: nano ~/.ssh/config

# task: Review SSH server configuration

command: sudo nano /etc/ssh/sshd_config
