## Day 16 Drill

# task: Inspect the environment

command: printenv
command: printenv HOME

# task: Create a temporary environment variable

command: export DAY16_ROLE="linux-admin"

# task: Verify the environment variable

command: echo $DAY16_ROLE
command: printenv DAY16_ROLE
command: env | grep DAY16_ROLE

# task: Unset the temporary environment variable

command: unset DAY16_ROLE

# task: Verify the variable was removed

command: printenv DAY16_ROLE
command: env | grep DAY16_ROLE

# task: Create a directory for the PATH test

command: mkdir -p ~/day16-bin

# task: Create an executable test script

command: cat > ~/day16-bin/day16hello <<'EOF'
#!/bin/bash
echo "Day 16 PATH test successful."
EOF

# task: Make the script executable

command: chmod +x ~/day16-bin/day16hello

# task: Verify the script cannot be found before modifying PATH

command: which day16hello

# task: Add the directory to PATH for the current session

command: export PATH=$PATH:$HOME/day16-bin

# task: Verify the updated PATH

command: echo $PATH

# task: Verify the shell can now find the script

command: which day16hello

# task: Execute the script through PATH

command: day16hello

# task: Create a file containing an environment variable

command: cat > ~/day16-env.sh <<'EOF'
export DAY16_PROJECT="linux-mastery"
EOF

# task: Load the environment variable into the current shell

command: source ~/day16-env.sh

# task: Verify the sourced variable

command: echo $DAY16_PROJECT

# task: Inspect system-wide environment configuration

command: cat /etc/environment
