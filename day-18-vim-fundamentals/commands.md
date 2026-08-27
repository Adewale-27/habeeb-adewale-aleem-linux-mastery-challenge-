# Day 18: Vim Fundamentals

1. `vim <file>` — Opens a file in Vim for editing.

2. `i` — Enters Insert mode so text can be typed.

3. `Esc` — Returns to Normal mode from Insert mode.

4. `:w` — Saves the current file.

5. `:q` — Quits Vim when there are no unsaved changes.

6. `:wq` / `:x` — Saves the file and quits Vim.

7. `:q!` — Quits Vim without saving changes.

8. `dd` — Deletes the current line.

9. `yy` / `p` — Copies the current line with "yy" and pastes it "p".

10. `u` / `Ctrl+r` — Undoes and redoes changes.

## Example Vim sequence

```bash
vim file.txt

i

text:
Debian Family is among the Linux Distribution Families
Ubuntu serves as an upstream for LinuxMint and others in the family
It uses DPKG-based APT package manager

Esc

:w

:q

vim file.txt

dd

u

:wq
