# Neovim Custom Shortcut Reference

Generated from `C:\Users\mattiaan\.config\nvim\init.lua` on 22 October 2026.

> **Leader key:** `Space`

Keys joined with `+` use a modifier when one is named, such as `Ctrl + Space`. Leader shortcuts begin with `Space` and are then typed in sequence, such as `Space + gd`. Uppercase letters matter.

## General and navigation

| Shortcut | Mode | Action | Scope |
|---|---|---|---|
| `Space + u` | Normal | Open the undo tree | Global |
| `Space + tt` | Normal | Open a new tab with a PowerShell terminal running `av` | Global |
| `-` | Normal | Open Oil in the parent directory | Global |
| `j` | Normal | Move down by displayed line when text wraps | Global |
| `k` | Normal | Move up by displayed line when text wraps | Global |
| `Space + n` | Normal | Go to the next buffer | Global |
| `Space + p` | Normal | Go to the previous buffer | Global |
| `Esc` | Terminal | Leave terminal-input mode and return to Normal mode | Global |

## Git, Gitsigns, and Lazygit

| Shortcut | Mode | Action | Scope |
|---|---|---|---|
| `Space + gg` | Normal | Open Lazygit for the current repository | Global |
| `]c` | Normal | Jump to the next changed hunk | Git buffer |
| `[c` | Normal | Jump to the previous changed hunk | Git buffer |
| `Space + hp` | Normal | Preview the current hunk | Git buffer |
| `Space + hd` | Normal | Open a side-by-side diff of the current file against `HEAD` | Git buffer |
| `:diffoff!` | Command | Close the active side-by-side diff | Git buffer |
| `Space + hs` | Normal / Visual | Stage the current or selected hunk | Git buffer |
| `Space + hr` | Normal / Visual | Discard the current or selected hunk; use carefully | Git buffer |
| `Space + hb` | Normal | Show blame information for the current line | Git buffer |

### Inside Lazygit

| Key | Action |
|---|---|
| Arrow keys or `h` / `j` / `k` / `l` | Navigate panels and items |
| `Space` | Stage or unstage the selected file or hunk |
| `Enter` | Inspect or open the selected item |
| `c` | Commit staged changes |
| `P` | Push |
| `p` | Pull |
| `x` | Open the context/action menu |
| `?` | Show available shortcuts |
| `q` | Go back or exit; the Lazygit tab closes automatically |

## Search, files, and symbols

| Shortcut | Mode | Action | Scope |
|---|---|---|---|
| `Space + ff` | Normal | Find files with fzf-lua | Global |
| `Space + fg` | Normal | Live-grep the project with fzf-lua | Global |
| `Space + fb` | Normal | Find open buffers with fzf-lua | Global |
| `Space + fr` | Normal | Find recently opened files | Global |
| `Space + fs` | Normal | Find symbols in the current document | LSP |
| `Space + fS` | Normal | Find symbols across the workspace | LSP |
| `Space + sr` | Normal | Open project-wide search and replace | Global |
| `Space + sw` | Normal | Search and replace the word under the cursor | Global |

## LSP and diagnostics

| Shortcut | Mode | Action | Scope |
|---|---|---|---|
| `gd` | Normal | Go to definition | LSP buffer |
| `gD` | Normal | Open a vertical split, then go to definition | After LSP attaches |
| `gr` | Normal | Show references | LSP |
| `K` | Normal | Show hover information; the global version uses a top split | LSP / global |
| `Space + rn` | Normal | Rename the symbol under the cursor | LSP |
| `Space + ca` | Normal | Show available code actions | LSP |
| `Space + e` | Normal | Open diagnostics in a floating window | Global |
| `[d` | Normal | Go to the previous diagnostic | Global |
| `]d` | Normal | Go to the next diagnostic | Global |
| `Space + de` | Normal | Put diagnostics into the location list | Global |
| `q` | Normal | Close the custom hover split | Hover split |

Python uses BasedPyright and Ruff for language-server features and diagnostics.
Saving a Python file does not automatically fix, organize, or format its code.
Neovim's Python provider selects `python3`, then `python`, from `PATH`; it is
not tied to a specific Python version or installation path. Provider-dependent
plugins require `pynvim` to be installed for the selected interpreter.

## Code structure and folds

| Shortcut | Mode | Action | Scope |
|---|---|---|---|
| `af` | Visual / Operator | Select the outer function | Treesitter |
| `if` | Visual / Operator | Select the inner function | Treesitter |
| `ac` | Visual / Operator | Select the outer class | Treesitter |
| `ic` | Visual / Operator | Select the inner class | Treesitter |
| `]f` | Normal | Go to the start of the next function | Treesitter |
| `[f` | Normal | Go to the start of the previous function | Treesitter |
| `]c` | Normal | Go to the start of the next class | Treesitter |
| `[c` | Normal | Go to the start of the previous class | Treesitter |
| `zR` | Normal | Open all folds | UFO |
| `zM` | Normal | Close all folds | UFO |
| `zr` | Normal | Open folds except selected kinds | UFO |
| `zm` | Normal | Close folds to a level | UFO |

## Quarto and Markdown

| Shortcut | Mode | Action | Scope |
|---|---|---|---|
| `]ce` | Normal | Jump to the next Quarto code cell; accepts a count | Quarto / Markdown |
| `[ce` | Normal | Jump to the previous Quarto code cell; accepts a count | Quarto / Markdown |
| `Space + qr` | Normal | Run the current Quarto cell | Quarto |
| `Space + qa` | Normal | Run all Quarto cells | Quarto |
| `Space + qb` | Normal | Run all Quarto cells above the cursor | Quarto |
| `Space + qR` | Visual | Run the selected Quarto range | Quarto |
| `Space + mp` | Normal | Toggle rendered Markdown preview | Markdown / Quarto |

## Completion, snippets, and CodeCompanion

CodeCompanion is the configured AI assistant plugin. The legacy `vim-ai`
plugin is not installed.

| Shortcut | Mode | Action | Scope |
|---|---|---|---|
| `Ctrl + Space` | Insert | Open the completion menu | nvim-cmp |
| `Enter` | Insert | Confirm the selected completion item | nvim-cmp |
| `Shift + Tab` | Insert / Select | Select the previous completion item, or jump backward in a snippet | nvim-cmp / LuaSnip |
| `Ctrl + Space` | Insert | Trigger omni-completion inside CodeCompanion buffers | CodeCompanion |
| `Tab` | Insert | Expand an UltiSnips snippet | UltiSnips |
| `Ctrl + n` | Insert / Select | Jump forward through UltiSnips fields | UltiSnips |
| `Ctrl + p` | Insert / Select | Jump backward through UltiSnips fields | UltiSnips |
| `gF` | Plugin-specific | Configured key for the CodeCompanion filesystem-monitor extension | CodeCompanion |

## Overleaf comments

| Shortcut | Mode | Action | Scope |
|---|---|---|---|
| `Space + oa` | Normal / Visual | Add an Overleaf review comment | Overleaf |
| `Space + oc` | Normal | Open cached Overleaf comments | Overleaf project |
| `Space + ou` | Normal | Update comments from Overleaf | Overleaf project |
| `Space + oC` | Normal | Refresh and then open Overleaf comments | Overleaf project |
| `Enter` | Picker | Jump to the selected commented text | Overleaf picker |
| `Ctrl + y` | Picker Insert / Normal | Reply to the selected comment and keep the thread open | Overleaf picker |
| `Ctrl + r` | Picker Insert / Normal | Optionally reply, then resolve the selected comment | Overleaf picker |

## TeX and VimTeX

LaTeX buffers use `textwidth=80`. Terminal/GUI pastes in Normal or Insert mode
automatically reflow long pasted lines using the buffer's TeX formatter (`gqq`).
This inserts source line breaks; long unbreakable commands may exceed 80 columns.
Register puts (`p`, `P`, or `Ctrl+r`) are not handled by the paste hook.
Use `gqip` in Normal mode to reflow an existing paragraph, or select text and
press `gq`. Set `:setlocal textwidth=0` to disable automatic paste reflow.

| Shortcut | Mode | Action | Scope |
|---|---|---|---|
| `se` | Visual | Surround the selection with a VimTeX environment | VimTeX |
| `Ctrl + ]` | Normal | Jump to the tag under the cursor | TeX buffer |

## Configuration notes

- This inventory lists keys explicitly assigned or configured in `init.lua`. It does not reproduce every default mapping supplied by installed plugins.
- The Overleaf comments header says `Ctrl + p` replies to a comment, but the executable picker mapping is `Ctrl + y`. This guide follows the executable mapping.
- File, text, buffer, recent-file, and symbol searches use the `Space + f…` mappings backed by `fzf-lua`.
- Completion is context-sensitive in Markdown and Quarto: it is enabled in injected code and while typing reference-like `@` expressions.

**Total: 74 configured shortcuts and trigger keys.**
