# Day 05 Drill

# task: Create a symbolic link to a config file.
command: ln -s config.file config-link

# task: Resolve the symbolic link's real path.
command: realpath config-link

# task: Create a 2-level tree of home directory
command:tree -L 2 ~ 

# task: move to the /etc using pushd
command: pushd /etc
