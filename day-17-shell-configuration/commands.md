# Day 17: Shell Configuration

1. `nano ~/.bashrc` — Opens the user's Bash configuration file for editing.

2. `source ~/.bashrc` — Reloads the `.bashrc` configuration in the current shell without opening a new terminal.

3. `cat ~/.bash_profile` — Displays the user's Bash login-shell configuration file when it exists. On Ubuntu, `~/.profile` is commonly used instead for login-session configuration.

4. `sudo nano /etc/environment` — Opens the system-wide environment configuration file for editing.

5. `sudo nano /etc/bash.bashrc` — Opens the system-wide Bash configuration file for editing.

6. `alias` — Displays existing shell aliases or creates a new alias.

7. `unalias` — Removes an existing shell alias from the current shell.

8. `type` — Shows how Bash interprets or resolves a command.

9. `which` — Displays the path of an executable found through the PATH variable.

10. `whereis` — Locates the binary, source files, and manual pages associated with a command.

## Example shell configuration sequence

```bash
nano ~/.bashrc

export DAY17_PROJECT="I'm Habeeb. I'm doing a 30-Days-Linux-challenge"
alias ll='ls -lah'
alias name='adecloud'

source ~/.bashrc

echo $DAY17_PROJECT
alias ll
alias name

unalias ll
unalias name
type ll
type name

source ~/.bashrc

type ll
type name
which bash
whereis bash

bash

echo $DAY17_PROJECT
alias ll
alias name
type ll
type name
exit

cat ~/.bash_profile

cat /etc/environment
cat /etc/bash.bashrc
