# Day 7: Ownership & Special Bits

1. chown: It changes the owner of a file or directory.
   Example: chown john file.txt → Changes the owner of file.txt to john.
   
3. chown user:group: It changes both the owner (user) and group of a file or directory.
   Example: chown john:developers file.txt → Changes the owner to john and the group to developers.
   
4. chown -R: It changes ownership recursively, meaning it changes the owner/group of the directory and everything inside it.
   Example: chown -R john:developers project/ → Changes the owner and group of project/ and all files/directories inside it.
   
5. chgrp: It changes only the group of a file or directory.
   Example: chgrp developers file.txt → Changes the group of file.txt to developers, while the owner stays the same.
   
6. chmod u+s (SUID - Set User ID): It gives an executable permission to run with the permissions of the file's owner. The s replaces the owner's execute permission.
   Example: chmod u+s program → If program is owned by root, it can run with root's permissions.
   
7. chmod g+s (SGID - Set Group ID): It gives an executable permission to run with the permissions of the file's group. On directories, new files created inside inherit the directory's group.
   Example: chmod g+s /shared → New files created inside /shared inherit the group of /shared.
   
8. chmod +t (Sticky Bit): It prevents users from deleting or renaming files owned by other users inside a shared directory.
   Example: chmod +t /shared → Users can create files in /shared, but normally cannot delete another user's files.
   
9. find -perm /4000: It searches for files that have the SUID permission set. 4000 represents the SUID bit.
   Example: find / -perm /4000 → Searches the entire system for SUID files.
   
10. getfacl: It shows the ACL (Access Control List) of a file or directory, including the owner, group, basic permissions, and additional permissions.
   Example: getfacl file.txt → Displays the ACL and permissions for file.txt.
   
11. setfacl -m: It modifies or adds ACL permissions for a file or directory.
    Example: setfacl -m u:john:rwx file.txt → Gives user john read, write, and execute permissions on file.txt.

