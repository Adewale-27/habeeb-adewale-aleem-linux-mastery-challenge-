# Day 4: Searching the filesystem

1. file -name: It searches for files and directories through their names. "file /etc -name "*.conf"   
2. file -type: It searches for files and directories by their type. 'f' - file, 'd' - directories, 'l' - symbolic link.
3. file -size: It searches for files and directories by size. 'c' - bytes, 'K' - KB, 'M' - MB, 'G' - GB.
4. file -mtime: It searches for files and directories based on when they were last modified.  
5. file -perm: It searches for files and directories by their permission.
6. locate: It searches for files and directories by name. It's faster than using 'find' in time of searching database.
7. updatedb: It updates an existing database used by locate and creates one if it doesn't exist.
8. du: (Disk Usage) It displays how much space a file or directory uses.
9. du -sh: It displays the total space used by file and directory in a human-readable format.
10. df -h: (Disk Free) It displays the total, used and available of disk space on the system. The '-h' displays the information in human-readable format.
