
# Phase 4: Environment, Vim & Text Processing | Day 20 of 30

# Day 20: Text Processing & Pipes

## Today's commands

Today's checkpoint focuses on text searching, filtering, sorting, extracting columns, replacing text, removing duplicates, and combining commands with pipes.

The 10 commands covered today are documented in  `commands.md`.

## Today's tasks

- Search for matching text with `grep`
- Search recursively with `grep -r`
- Search case-insensitively with `grep -i`
- Sort text with `sort`
- Sort numbers with `sort -n`
- Remove duplicate lines with `uniq`
- Extract a column with `cut -d',' -f 3`
- Extract fields with `awk '{print $1}'`
- Replace text with `sed 's/old/new/g'`
- Combine commands with pipes using `|`

## The drill

I worked with a raw log file and used `grep -i 'error'` to filter the entries containing the word `error`.

I then used `cut -d',' -f 3` to extract the timestamp column from the matching log entries.

Finally, I used `sort` and `uniq` to sort the timestamps and remove duplicate entries in a single chained pipeline.

The command used was:

grep -i 'error' app.log | cut -d',' -f 3 | sort | uniq

## What I learned

The checkpoint showed how Linux text-processing commands can be combined to work with data quickly from the command line.

I learned how `grep` can search for matching text, while `grep -r` can search recursively through directories. The `-i` option allows searches to ignore differences between uppercase and lowercase letters.

I also learned how `sort` can organize text and how `sort -n` can sort numerical values.

The `uniq` command removes duplicate lines when matching entries are next to each other, which is why it is commonly used after `sort`.

I practiced using `cut` to extract specific columns from comma-separated data and `awk` to extract fields from structured text.

I also learned how `sed` can be used to replace text using `sed 's/old/new/g'`.

Most importantly, I practiced using the pipe operator `|` to connect multiple commands together. The output from one command becomes the input for the next command, allowing several text-processing operations to be performed in one pipeline.

## Evidence

Screenshots of the practical Day 20 checkpoint are stored in the `evidence/` directory.

## Related

Previous day: ../day-19-vim-search-replace

Next day: ../day-21-viewing-processes
