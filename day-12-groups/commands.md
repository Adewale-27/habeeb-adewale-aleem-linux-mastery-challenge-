# Day 12: Groups & Access Circles

1. groupadd: It creates a new user group. 
2. groupdel: It permanently deletes an existing group. It doesn't delete the users who are members, even if the group is deleted the users in it still exist.
3. gpasswd -a: It adds a user to a secondary group safely without changing their primary group or removing them from any other secondary groups.
4. gpasswd -d: It removes a user from a supplementary group. 
5. getent group: It displays the group information from the system's configured user/group database. 
6. getent passwd: It displays the user-account information from the system's configured user database.
7. groups: It displays the groups that the user belongs to. It's used to confirm if a user is added or removed from a particular group. 
8. id -Gn:
   id: It gives information about user.
   -G: It shows all groups.
   -n shows names instead of numbers.
   id -Gn: It displays the names of all groups a user belongs to.
9. newgrp: It changes your current shell's active group. This is especially useful when you've just been added to a group and want to use that group's permissions without logging out and back in.
10. cat /etc/group: It displays a full list of all local user groups and their current members on a system. 
