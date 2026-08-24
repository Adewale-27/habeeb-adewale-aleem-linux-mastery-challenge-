# Day 15 Drill

# task: Create the team group
command: sudo groupadd titans

# task: Create the team member
command: sudo useradd -m -G titans habeeb

# task: Set password
command: sudo passwd habeeb

# task: Verify identity and groups
command: id habeeb
command: getent passwd habeeb

# task: Refresh package information and install required tools
command: sudo apt update && sudo apt install -y tree curl git

# task: Verify installed tools
command: tree --version
command: curl --version
command: git --version

# task: Verify packages
command: dpkg -l | grep -E 'tree|curl|git'

# task: Check installed packages
command: apt list --installed 2>/dev/null | grep -E 'tree|curl|git'

# task: Check available upgrades
command: apt list --upgradable

# task: Review command history
command: history

# task: Remove the account and its home directory
command: sudo userdel -r habeeb

