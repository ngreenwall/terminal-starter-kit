# CLAUDE.md

Repo-specific context for working in this project. See `~/.claude/CLAUDE.md` for global preferences.

## What this repo is

A small, public, beginner-facing starter kit: a Claude-inspired Ghostty terminal theme, a starter `.zshrc`, and a plain-language guide to using the terminal. Tied to a LinkedIn post. Audience is non-developers, not just engineers browsing GitHub.

## Conventions established in this repo

**File naming**: config files use a `.txt` extension (`ghostty-config.txt`, `starter-zshrc.txt`) instead of their real dotfile names, so they open in a text editor on double-click instead of prompting "no application set to open this file." Any new file meant to be copy-pasted by a beginner should follow this pattern.

**Instruction consistency**: if a file has its own header comment describing how to open or use it (e.g. `ghostty-config.txt`'s header), it must match the steps in `README.md` exactly. Currently both use the Ghostty menu bar (**Ghostty > Settings**) to open the config, and "quit and reopen Ghostty" to reload, not keyboard shortcuts.

**Writing style for docs**: `README.md` and `docs/using-the-terminal.md` are written for non-developers. No assumed jargon, explain what each thing is and why it matters, and include a plain-language "what this does" line after every command block.

**Scope discipline**: this is a starter kit, not a full dotfiles collection. Keep additions within Ghostty + Zsh + terminal basics; don't expand into unrelated tool configs unless explicitly asked.

**Images**: screenshots live in `ghostty/` (`terminal-default.png`, `terminal-ghostty.png`, `palette-preview.png`). Side-by-side comparisons use a markdown table (GitHub renders it as columns). Sized images use an inline `<img>` tag with a `width` attribute, since plain markdown image syntax has no sizing control.
