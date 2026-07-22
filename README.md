# Starter Dotfiles

A beginner-friendly starting point for setting up your Mac terminal. "Dotfiles" are configuration files (their names usually start with a dot, like `.zshrc`) that control how your tools look and behave. Most developers keep a personal collection of them; this repo is a clean, well-commented starter kit you can copy and make your own.

Includes a Claude-inspired color theme for [Ghostty](https://ghostty.org) (a modern terminal app) and a beginner-friendly `.zshrc` (the config file for the Zsh shell, which is the default command-line shell on macOS).

## What's in here

- `ghostty/ghostty.config`: Settings for the Ghostty terminal app. Colors, font, window padding, cursor style, and more. Every setting has a comment explaining what it does.
- `ghostty/palette-preview.png`, `ghostty/terminal-default.png`, `ghostty/terminal-ghostty.png`: Screenshots showing what the color theme looks like, including a before/after comparison against the default terminal.
- `zsh/starter.zshrc`: A starter version of the `.zshrc` file, which runs every time you open a new terminal window. Sets up things like command history, tab completion, and a simple colored prompt.

## How to use it

### Ghostty config

1. Install [Ghostty](https://ghostty.org) if you don't already have it.
2. Open Ghostty, click the menu bar, then go to **Ghostty > Settings**. This opens Ghostty's config file on your Mac.
3. Copy the contents of `ghostty/ghostty.config` from this repo into that file.
4. Save, then open a new Ghostty window to see the changes. (What this does: applies the color palette, font settings, and window behavior to your terminal.)

### Zsh config

1. Your Zsh config file lives at `~/.zshrc` on your Mac (the `~` means your home folder). If you don't have one yet, you can create it.
2. Copy the contents of `zsh/starter.zshrc` from this repo into `~/.zshrc`.
3. In your terminal, run:
   ```
   source ~/.zshrc
   ```
   (What this does: reloads the file immediately, so you don't have to close and reopen your terminal to see the changes.)

## Why "starter"

These files are meant to be a foundation, not a finished product. Every section has a comment explaining what it does and why, so you can read through it, decide what you like, and change anything to fit your own taste.
