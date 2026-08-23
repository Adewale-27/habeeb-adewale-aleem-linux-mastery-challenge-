# Day10: Security Checkpoint & Audit

1. find/ -perm/4000 (SUID audit): It searches for files on the system that have the SUID permission.
2. last: It shows the history of successful login sessions
3. lastlog: It shows the most recent login for each user account. lastlog, traditionally gets information from /var/log/lastlog.
4. w: It shows who is currently logged in and what they are currently doing.
5. who: It shows the users who are currently logged in
6. groups: It shows the groups the current user belongs to.
7. passwd: It changes user's password
8. chage -l: It shows the information about user's password aging.
9. lastb: It shows failed login attempts
10. history | grep sudo: It searches the history of commands run with 'sudo' and displays them.
