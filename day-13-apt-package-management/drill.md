# Day 13 Drill

# task: Refresh the package index
command: sudo apt update 

# task: Upgrade installed packages
command: sudo apt upgrade -y

# task: Perform a full system upgrade
command: sudo apt full-upgrade

# task: Search for the tree package
command: apt search tree

# task: Install the tree utility
command: sudo apt install tree

# task: Inspect the details of the tree package
command: apt show tree

# task: Verify that tree is installed
command: dpkg -l tree

# task: Remove the tree package
command: sudo apt remove tree

# task: Purge the tree package and its configuration files
command: sudo apt purge tree

# task: Remove unused dependencies
command: sudo apt autoremove

