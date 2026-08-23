# Day 13: APT Package Management

1. apt update: It refreshes your local package index by contacting the repositories configured on your system and downloading the latest information about available packages and versions. It doesn't install packages. 
2. apt upgrade: It downloads and installs newer versions of packages that are already installed on your system. It generally does not remove installed packages or make major dependency changes.
3. apt full-upgrade: It upgrades installed packages and, when necessary, may install new packages or remove existing ones to resolve changing dependencies.
4. apt install: It downloads and installs the specified package, while automatically resolving and installing any required dependencies.
5. apt remove: It uninstalls the specified package but generally keeps its configuration files on the system.
6. apt purge: It removes the specified package and its associated system configuration files, making it more thorough than apt remove. 
7. apt autoremove: It removes packages that were automatically installed as dependencies but are no longer required by any installed package. It can also remove their associated configuration files when used with '--purge'.
8. apt search: searches the available package lists for packages that match a specified search term. It is useful when you don't know the exact package name but know what type of software or functionality you're looking for.
9. apt show: It displays detailed information about a package, including its name, version, dependencies, size, description, architecture, and repository information.
10. dpkg -l: It lists Debian packages and their installation status. It is useful for checking whether a particular package is installed.
dpkg -L: It lists all files installed by a specific Debian package, such as binaries, configuration files, documentation, libraries, and other package files.

