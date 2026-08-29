
## Day 20 Drill

# task: Search the raw log file for error entries

command: grep 'error' logfile.txt

# task: Search the log file for errors without considering uppercase or lowercase

command: grep -i 'error' logfile.txt

# task: Search recursively for error entries in the current directory

command: grep -r 'error' .

# task: Sort the contents of the log file alphabetically

command: sort names.txt

# task: Sort numerical values in the log file

command: sort -n numbers.txt

# task: Extract the third column from the comma-separated log file

command: cut -d',' -f 3 logfile.txt

# task: Print the first field from each line

command: awk '{print $1}' logfile.txt

# task: Replace every occurrence of error with ERROR

command: sed 's/error/ERROR/g' logfile.txt

# task: Filter for error entries and sort the results

command: grep -i 'error' logfile.txt | sort

# task: Build one pipeline that filters for error entries, extracts the timestamp column, sorts the results, and removes duplicates

command: grep -i 'error' logfile.txt | cut -d'-' -f 3 | sort | uniq
