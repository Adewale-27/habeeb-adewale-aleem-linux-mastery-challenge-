# Day 6: Reading & Setting Permissions

1. ls -l: It shows files and directories with their permission strings.
2. chmod (relative +/-): It adds and removes file and directory permissions using the relative(+/-) way.
3. chmod (assignment): It sets specified permissions to files and directories using '='.
4. chmod 755 (octal): It uses the octal method to set the user, group, and other permissions to 7(rwx), 5(r-x), and 5(r-x).
5. chmod 644 (octal): It sets the permissions to user - 6(rw-), group - 4(r--), and other - 4(r--).
6. chmod 600 (octal): It sets the permissions to user - 6(rw-), group and other to 0.
7. chmod -R: It changes the permissions recursively for the directory and everything in it.
8. umask: It displays the default permission mask used when creating new files or directories. 
9. umask -S: It displays the mask in human-readable format. 

10 stat -c '%A %U %G': It displays a file or directory's permissions, owner, and group in human-readable format. 
