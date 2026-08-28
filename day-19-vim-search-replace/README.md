
# Phase 4: Environment, Vim & Text Processing | Day 19 of 30

# Day 19: Vim Navigation & Search/Replace

## Today's commands

Today's checkpoint focuses on Vim navigation, searching, replacing text, deleting words and characters, opening new lines, and saving changes.

The 10 commands covered today are documented in  `commands.md`.

## Today's tasks

- Jump to the beginning of a file with `gg`
- Jump to the end of a file with `G`
- Jump to a specific line with `:10`
- Search forward with `/`
- Search backward with `?`
- Move between search matches with `n` and `N`
- Replace text throughout a file with `:%s/old/new/g`
- Delete a word with `dw`
- Delete a character with `x`
- Open new lines with `o` and `O`
- Save and quit with `ZZ`

## The drill

I opened a 50-line configuration file in Vim and used `:10` to jump directly to line 10.

I then searched for a keyword using `/` and used `n` and `N` to move between the matching occurrences.

Finally, I used `:%s/old/new/g` to replace every occurrence of one word with another across the entire file and saved the changes.

## What I learned

The checkpoint showed how Vim makes it possible to navigate large files quickly without manually scrolling through every line.

I learned how `gg` and `G` can be used to move to the beginning and end of a file, while `:10` allows me to jump directly to a specific line.

I also learned how `/` and `?` can search forward and backward, and how `n` and `N` can be used to move between search matches.

dw is not exactly "delete the whole word" when the cursor is in the middle of a word. It deletes from the cursor to the end of the word. 
For deleting a whole word regardless of cursor position, diw is often useful.


Most importantly, I practiced Vim's search and replace functionality using `:%s/old/new/g` to replace text across an entire file.

## Evidence

Screenshots of the practical Day 19 checkpoint are stored in the `evidence/` directory.

## Related

Previous day: ../day-18-vim-fundamentals

Next day: ../day-20-text-processing-checkpoint
