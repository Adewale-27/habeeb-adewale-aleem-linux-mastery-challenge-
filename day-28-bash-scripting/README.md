# Phase 6: Networking, Scripting & SSH Mastery | Day 28 of 30

# Day 28: Bash Scripting Foundations

## Today's commands

Today's checkpoint focuses on building basic Bash scripts, working with variables, accepting user input, using conditional statements, performing comparisons, and creating loops for automation.

The 10 commands and concepts covered today are documented in `commands.md`.

## Today's tasks

- Create a Bash script using `#!/bin/bash`
- Make a script executable with `chmod +x script.sh`
- Execute a script with `./script.sh`
- Create variables with `VAR=value`
- Use command substitution with `$()`
- Read user input with `read -p`
- Use conditions with `if / elif / else / fi`
- Compare values with `-gt / -lt / -eq`
- Create a `for` loop
- Create a `while` loop

## The drill

I first created a Bash script using the `#!/bin/bash` shebang and made it executable using `chmod +x`.

I then executed the script using `./script.sh` and practiced creating variables using the `VAR=value` syntax.

Next, I used `$()` command substitution to capture command output and `read -p` to collect the user's name.

I used an `if` statement to check whether a configuration file existed and practiced using `elif` and `else` for additional conditions.

Finally, I created a loop through three server names and used `ping` to test each server, while also practicing `for` and `while` loops.

This gave me practical experience with creating Bash scripts, handling user input, making decisions, and automating repeated tasks.

## What I learned

The checkpoint showed how Bash scripting can be used to automate common Linux administration tasks.

I learned how the `#!/bin/bash` shebang identifies Bash as the script interpreter.

I also learned how `chmod +x` makes a script executable and how `./script.sh` runs the script from the current directory.

The `VAR=value` syntax helped me understand how variables store information in Bash.

I learned how `$()` command substitution can capture the output of another command and use it inside a script.

The `read -p` command allowed me to collect input directly from the user.

I also learned how `if`, `elif`, `else`, and `fi` are used to make decisions based on conditions.

The `-gt`, `-lt`, and `-eq` operators helped me perform numeric comparisons.

Finally, I learned how `for` and `while` loops can repeat commands and automate tasks involving multiple values or conditions.

Most importantly, I learned how Bash scripting combines commands, variables, conditions, user input, and loops to automate Linux tasks.

## Evidence

Screenshots of the practical Day 28 Bash scripting checkpoint are stored in the `evidence/` directory.

## Related

Previous day: ../day-27-ssh-file-transfer

Next day: ../day-29-functions-automation
