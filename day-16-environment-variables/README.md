# Phase 4: Environment, Vim & Text Processing | Day 16 of 30

# Day 16: Environment Variables

## Today's commands

Today's checkpoint focuses on environment variables, shell configuration, and the PATH variable.

The 10 commands covered today are documented in  `commands.md`.

## Today's tasks

- Inspect environment variables
- Check the HOME variable
- Create and read a temporary environment variable
- Remove an environment variable
- Inspect the shell environment
- Load environment variables with source
- Inspect the current PATH
- Add a directory to PATH for the current session only
- Verify that the shell can find a script through PATH
- Inspect /etc/environment


## The drill

I created a temporary environment variable, confirmed that it existed, and then unset it.

I then created a directory containing an executable script and added that directory to PATH for the current shell session only.

Finally, I verified that the shell could find and execute the script without specifying its full path.


## What I learned

The checkpoint showed how environment variables provide configuration and information to processes running inside a Linux shell.

I also learned how PATH controls where the shell searches for executable commands and scripts.

Most importantly, I practiced modifying PATH temporarily with export, without making a permanent change to my shell configuration.

## Evidence

Screenshots of the practical Day 16 checkpoint are stored in the `evidence/` directory.

## Related

Previous day: ../day-15-provisioning-checkpoint

Next day: ../day-17-shell-configuration
