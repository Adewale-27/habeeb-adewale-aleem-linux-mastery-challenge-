# Day 12 Drill

# task: Create the group
command: sudo groupadd devs

# task: Create two users
command: sudo useradd -m developer1
command: sudo useradd -m developer2

# task: Add both users to devs
command: sudo gpasswd -a developer1 devs
command: sudo gpasswd -a developer2 devs

# task: Confirm the group and its members
command: getent group devs

# task: Check each user's groups
command: groups developer1
command: groups developer2

# task: Remove one member
command: sudo gpasswd -d developer2 devs

# task: Verify the removal
command: getent group devs

# task: Delete the group
command: sudo groupdel devs

# task: Confirm the group no longer exists
command: getent group devs
