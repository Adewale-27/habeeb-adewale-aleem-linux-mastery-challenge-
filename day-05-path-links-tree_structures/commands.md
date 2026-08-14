# Day 5: Paths, Links & Tree Structures

1. tree: It displays files and directories in a tree-link structure
2. tree -L: It displays files and directories in tree structure based on the number of levels. 
3. ln (hard link): It creates a hard link file. It's a link that points to the same underlying data as the original file. Even if the original file is deleted, the hard link still works perfectly.
4. ln -s (symbolic link): It creates a symbolic link file. It also points to an another file or directory, but once it's deleted it breakes and become unreachable.  
5. readlink: It displays what a symbolic link points to.
6. realpath: It shows the real path of a link, file or directory.
7. basename: It extracts the final filename from a path.
8. dirname: It extracts portion of a path.
9. pushd / popd: pushd - It saves the path you're working on, displays it and move to new given path. popd - returns to the path before running the pushd command 
10. ls -lt: It lists files in long format, sorted by modification time. Newest to the oldest.
