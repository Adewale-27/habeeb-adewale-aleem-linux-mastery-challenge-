# Day 16: Environment Variables

1. `printenv` — Displays the environment variables available to the current shell and its processes.

2. `printenv HOME` — Displays the value of the HOME environment variable.

3. `echo $VAR` — Expands and displays the value stored in the specified shell or environment variable.

4. `export` — Creates or modifies a shell variable and exports it so child processes can access it.

5. `unset` — Removes the specified variable from the current shell environment.

6. `env` — Displays the environment variables available to the current shell process.

7. `source` — Reads and executes commands from a file in the current shell session, allowing variables and other changes to affect that shell.

8. `echo $PATH` — Displays the directories the shell searches when looking for executable commands.

9. `export PATH=$PATH:` — Adds a directory to the current shell's PATH while preserving the existing directories.

10. `cat /etc/environment` — Displays the system-wide environment configuration stored in /etc/environment.

## Example environment and PATH sequence

```bash
printenv
printenv HOME

export DAY16_ROLE="linux-admin"
echo $DAY16_ROLE
printenv DAY16_ROLE

env | grep DAY16_ROLE

unset DAY16_ROLE
printenv DAY16_ROLE

mkdir -p ~/day16-bin

cat > ~/day16-bin/day16hello <<'EOF'
#!/bin/bash
echo "Day 16 PATH test successful."
EOF

chmod +x ~/day16-bin/day16hello

which day16hello

export PATH=$PATH:$HOME/day16-bin

echo $PATH
which day16hello
day16hello

cat > ~/day16-env.sh <<'EOF'
export DAY16_PROJECT="linux-mastery"
EOF

source ~/day16-env.sh
echo $DAY16_PROJECT

cat /etc/environment
