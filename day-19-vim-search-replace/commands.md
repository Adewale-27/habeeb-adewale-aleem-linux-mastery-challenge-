
# Day 19: Vim Navigation & Search/Replace

1. `gg / G` — Moves to the beginning or end of the file.

2. `:10` — Jumps directly to line 10.

3. `/` — Searches forward for a keyword or pattern.

4. `?` — Searches backward for a keyword or pattern.

5. `n / N` — Moves to the next or previous search match.

6. `:%s/old/new/g` — Replaces every occurrence of `old` with `new` across the entire file.

7. `dw` — Deletes from the cursor position through the end of the current word.

8. `x` — Deletes the character under the cursor.

9. `o / O` — Opens a new line below or above the current line and enters Insert mode.

10. `ZZ` — Saves the file and quits Vim.

## Example Vim sequence

```bash
vim config.txt

:10

/shows

n

n

N

:%s/displays/shows/g

ZZ
