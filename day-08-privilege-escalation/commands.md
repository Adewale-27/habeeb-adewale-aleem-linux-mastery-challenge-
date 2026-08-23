# Day 8: Privilege Escalation & Identity

1. sudo: It runs a command with root (administrator) privileges. Example: sudo apt update
2. sudo -i: It opens an interactive root login shell. It loads root's environment. 'exit' is used to exit from it.
3. sudo -u: It runs a command as a specified user. Example: sudo -u john whoami
4. sudo !!: It re-runs the previous command that got denied again without writing all commands. Example: apt update (denied), sudo !!
5. sudo -l: It lists the sudo privileges available to the current user, including which commands they are allowed to run with sudo.
6. visudo: It safely edit the sudoers configuration. sudoers file controls who can use sudo and what they can do with. It also helps to prevent configuration mistakes.
7. su: It switches to another user. Example: sudo su
8. su -: It switches to another user and starts a login shell, load the user's login environment.
9. whoami: It displays which user is currently logged in as. 
10. id: It displays the current user's UID, GID, and group membership. 
