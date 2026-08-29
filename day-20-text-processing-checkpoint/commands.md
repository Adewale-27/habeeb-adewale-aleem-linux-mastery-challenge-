
# Day 20: Text Processing & Pipes

1. `grep` — Searches for matching text in a file.

Example:

    grep 'error' logfile.txt

This searches `logfile.txt` for lines containing `error`.

2. `grep -r` — Searches recursively through files and directories.

Example:

    grep -r 'error' .

This searches files in the current directory and its subdirectories for `error`.

3. `grep -i` — Searches for matching text without considering uppercase or lowercase.

Example:

    grep -i 'error' logfile.txt

This matches `error`, `ERROR`, `Error`, and other uppercase/lowercase combinations.

4. `sort` — Sorts lines of text alphabetically.

Example:

    sort names.txt

This sorts the lines in `logfile.txt` alphabetically.

5. `sort -n` — Sorts numerical values in numerical order.

Example:

    sort -n numbers.txt

This sorts numerical values from the smallest to the largest.

6. `uniq` — Removes duplicate lines from sorted input.

Example:

    sort names.txt | uniq

This sorts the log entries and removes duplicate lines.

7. `cut -d',' -f 3` — Extracts the third column using a comma as the delimiter.

Example:

    cut -d',' -f 3 logfile.txt

This extracts the third column from comma-separated data in `logfile.txt`.

8. `awk '{print $1}'` — Prints the first field from each line.

Example:

    awk '{print $1}' logfile.txt

This prints the first field from every line in `logfile.txt`.

9. `sed 's/old/new/g'` — Replaces every occurrence of `old` with `new`.

Example:

    sed 's/error/ERROR/g' logfile.txt

This replaces every occurrence of `error` with `ERROR`.

10. `|` — Sends the output of one command as input to the next command.

Example:

    grep 'error' logfile.txt | sort

This finds error entries and sorts the results.

## Example pipeline

    grep -i 'error' logfile.txt | cut -d',' -f 3 | sort | uniq

This filters `logfile.txt` for error entries, extracts the third column, sorts the results, and removes duplicate entries.

## More pipeline examples

    grep -i 'error' logfile.txt | sort

Searches for errors and sorts the matching lines.

    grep -i 'error' logfile.txt | cut -d',' -f 3

Searches for errors and extracts the third column.

    grep -i 'error' logfile.txt | cut -d',' -f 3 | sort

Searches for errors, extracts the third column, and sorts the results.

    grep -i 'error' logfile.txt | cut -d',' -f 3 | sort | uniq

Searches for errors, extracts the third column, sorts the timestamps, and removes duplicates.

## Example text processing sequence

    grep -i 'error' logfile.txt

    grep -r 'error' .

    grep -i 'error' logfile.txt | sort

    grep -i 'error' logfile.txt | cut -d',' -f 3

    grep -i 'error' logfile.txt | cut -d',' -f 3 | sort | uniq
