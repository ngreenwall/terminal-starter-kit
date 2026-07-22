# =============================================================================
# STARTER .zshrc — A beginner-friendly shell configuration
# =============================================================================
# This file lives at: ~/.zshrc
# It runs every time you open a new terminal window or tab.
# After making changes, run: source ~/.zshrc
# That reloads the file without closing your terminal.
# =============================================================================


# --- ENVIRONMENT -------------------------------------------------------------
# LANG sets your language and character encoding.
# UTF-8 ensures emoji, accented characters, and symbols display correctly.
export LANG=en_US.UTF-8


# --- HOMEBREW ----------------------------------------------------------------
# Homebrew is the most popular package manager for macOS.
# It lets you install developer tools like git, node, and more from the terminal.
# Install it at: https://brew.sh
# This line runs Homebrew's setup so all its tools are available in your shell.
[[ -x /opt/homebrew/bin/brew ]] && eval "$(/opt/homebrew/bin/brew shellenv)"


# --- HISTORY -----------------------------------------------------------------
# Your terminal remembers every command you've typed.
# HISTFILE is where that history is saved on disk.
# HISTSIZE is how many commands are kept in memory during a session.
# SAVEHIST is how many commands are written to the file when you close the terminal.
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# SHARE_HISTORY syncs history across multiple terminal windows in real time.
# HIST_IGNORE_SPACE means any command you prefix with a space won't be saved.
# Useful for one-off sensitive commands you don't want logged.
setopt SHARE_HISTORY
setopt HIST_IGNORE_SPACE


# --- TAB COMPLETION ----------------------------------------------------------
# This enables smart tab completion. Press Tab and your terminal will try to
# finish the command, file name, or flag you're typing.
# The "if" block checks whether the completion cache is stale (older than 24 hours)
# and only rebuilds it when necessary, which keeps your shell startup fast.
autoload -Uz compinit
if [[ -n ~/.zcompdump(#qN.mh+24) ]]; then
  compinit
else
  compinit -C
fi


# --- ALIASES -----------------------------------------------------------------
# Aliases are shortcuts — type the short version, your terminal runs the full command.

# upbrew updates Homebrew itself and then upgrades everything installed with it.
alias upbrew='brew update && brew upgrade'


# --- PROMPT ------------------------------------------------------------------
# This controls what your terminal prompt looks like.
# The below prompt will show ~ % or ~/directory % depending on your current directory.
#
# %F{1} = color 1 from your Ghostty palette (red/orange in Claude theme)
# %~    = current directory (~ = home folder)
# %f    = reset color
# %F{7} = color 7 (light gray)
# %#    = shows % for normal user, # for root/superuser (sudo)
# %f    = reset color
PROMPT='%F{1}%~%f %F{7}%#%f '


