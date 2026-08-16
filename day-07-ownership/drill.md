# Day 07 Drill

# task: change the owner of file.txt
command: sudo chown john file.txt

# task: change the group of project (directory)
command: sudo chgrp student project

# task: change both owner and group
command: sudo chown john:student file.txt

# task: set user and group ID for file.txt
command: chmod u+s file.txt
command: chmod g+s file.txt

# task: show file with permission over 4000
command: find -perm /4000
