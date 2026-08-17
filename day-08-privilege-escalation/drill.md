# Day 08 Drill

#task: update the apt repo
command: sudo apt update

#task: open the root login shell and logout
command: sudo -i
command: exit

#task: rerun a failed command without writing all command
command: apt update
command: sudo !!

#task: show the current user's sudo privilege
command: sudo -l

#task: switch to developer (a user)
command: sudo su developer

#task: switch user and load the login environment
command: sudo su - developer

#task: display the current user's UID, GID, and group membership. 
command: id
