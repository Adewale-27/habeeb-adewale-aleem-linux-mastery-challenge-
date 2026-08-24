# Day 15: Users & Packages Checkpoint

1. `id <user>` — Displays the user's UID, GID, and group memberships.

2. `getent passwd <user>` — Retrieves the user's account information from the system's configured identity databases.

3. `useradd -m -G <group> <user>` — Creates a new user, creates their home directory, and adds them to the specified supplementary group.

4. `passwd <user>` — Sets or changes the password for a user account.

5. `apt list --installed` — Lists packages currently installed on the system.

6. `apt list --upgradable` — Shows installed packages for which newer versions are available.

7. `apt update && apt install -y <package>` — Refreshes the package index and installs the specified package without requiring interactive confirmation.

8. `dpkg -l | grep <pattern>` — Searches the list of packages known to dpkg and filters the results using grep.

9. `apt autoremove` — Removes packages that were automatically installed as dependencies but are no longer required.

10. `history` — Displays previously executed shell commands from the current user's command history.

## Example provisioning sequence

```bash
sudo groupadd titans
sudo useradd -m -G titans habeeb
sudo passwd habeeb

id habeeb
getent passwd habeeb

sudo apt update && sudo apt install -y tree curl git

apt list --installed 2>/dev/null | grep -E 'tree|curl|git'
dpkg -l | grep -E 'tree|curl|git'

apt list --upgradable
history
