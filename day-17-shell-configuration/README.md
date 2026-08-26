# Phase 4: Environment, Vim & Text Processing | Day 17 of 30

# Day 17: Shell Configuration

## Today's commands

Today's checkpoint focuses on shell configuration, Bash startup files, aliases, and command lookup.

The 10 commands covered today are documented in  `commands.md`.

## Today's tasks

- Inspect the .bashrc configuration file
- Reload shell configuration with source
- Inspect the .bash_profile configuration file
- Inspect /etc/environment
- Inspect /etc/bash.bashrc
- Create and read a shell alias
- Remove a shell alias
- Inspect command types
- Locate executable commands
- Locate command files


## The drill
I added a permanent environment variable and custom aliases to my .bashrc, reloaded the configuration with source without opening a new terminal, and confirmed that they worked in the current shell.

I then started a fresh Bash session and verified that both the environment variable and aliases persisted.


## What I learned

The checkpoint showed how shell configuration files provide a way to persist environment variables and aliases between Bash sessions.

I also learned how source reloads configuration changes in the current shell without requiring a new terminal.

I also learned that on Ubuntu, `.profile` is commonly used for login-session configuration instead of `.bash_profile`.

Most importantly, I practiced using aliases and learned how type, which, and whereis can help identify how commands are resolved and where they are located.


## Evidence

Screenshots of the practical Day 17 checkpoint are stored in the `evidence/` directory.

## Related

Previous day: ../day-16-environment-variables

Next day: ../day-18-vim-fundamentals
