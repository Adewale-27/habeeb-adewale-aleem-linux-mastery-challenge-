# Day 09 Drill

# task: calculate a md5 checksum of file.txt with content "Hello linux"
command: echo "Hello Linux" > file.txt
command: md5sum file.txt

# task: calculate a md5 checksum of file.txt with content "Hello ubuntu"
command: md5sum file.txt

# task: calculate a sha256 checksum of file.txt with content "Hello linux"
command: sha256sum file.txt

# task: generate a key and list out the public key
command: gpg --key-gen
command: gpg --list-keys

# task: make file.txt impossible to rename or delete by anyone
command: sudo chattr +i file.txt

# task: allow port 443 on ssh
command: sudo ufw allow 443/tcp

# task: displays the current firewall state and rules
command: sudo ufw status
