# Day 06 Drill

# task: Create a script file
command: touch script.sh

# task: set permission to rwxr-xr-x using the chmod relative method
command:  chmod u+rwx,g+rx,o+rx script.sh

# task: set permission to rwxr-xr-x using the chmod assignment method
command: chmod u=rwx,g=rx,o=rx script.sh

# task: set permission to rwxr-xr-x using the chmod octal method
command: chmod 755 script.sh

# task: show the permissions, owner, and group of home directory
command: stat -c '%A %U %G' ~

# task: display script's permission strings.
command: ls -l
