# Day 14 Drill — DNF/YUM & Alternative Installs

## Task: Identify the Linux distribution

Command: cat /etc/os-release

## Task: Check DNF

command: dnf --version

## Task: Update packages

command: sudo dnf update

## Task: Search for package

command: dnf search tree

## Task: Install the package

command: sudo dnf install tree

## Task: Verify the installation

command: rpm -qa | grep '^tree'

## Task: Query the installed package

command: rpm -q tree

## Task: Remove the package

Command: sudo dnf remove tree

## Task: Verify removal

Command: rpm -q tree

## Compare with Day 13

Compare the DNF/RPM workflow with the APT/dpkg workflow from Day 13.

## DNF/RPM
sudo dnf update
dnf search tree
sudo dnf install tree
rpm -q tree
sudo dnf remove tree

## APT/dpkg
sudo apt update
apt search tree
sudo apt install tree
dpkg -l tree
sudo apt remove tree
