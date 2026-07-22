# Using the Terminal

New to the terminal? Start here before setting up Ghostty or `.zshrc`.

The terminal is a text-based way to control your computer. Instead of clicking buttons and menus, you type commands. It sounds harder, but it's faster once you know a few basics, and it's what tools like Ghostty and Claude Code run inside of.

## How to open it

**Option 1: Spotlight**
Press `Cmd + Space`, type `Terminal`, press Enter. This opens Apple's built-in terminal app.

**Option 2: Applications folder**
Go to `Applications > Utilities > Terminal`.

**Option 3: Ghostty**
If you've set up Ghostty from this repo, open it from `/Applications` instead. It's the faster, better-looking option covered in the [main README](../README.md).

## Running a command

Type the command, then press **Enter**. That's it.

A few things to know:
- Nothing happens until you press Enter.
- No response usually means it worked. Errors print in red or say something went wrong.
- `Ctrl + C` cancels a command that's stuck or running.

## Reading a file path

Paths describe where something lives on your computer. They look like this:

```
/Users/yourname/Documents/project/file.txt
```

Each `/` separates a folder. Read it left to right: start at the drive, then `Users`, then your username folder, then `Documents`, and so on.

**The `~` shortcut:** `~` stands for your home folder (`/Users/yourname`). So `~/Documents` means the same thing as `/Users/yourname/Documents`. You'll see `~` a lot, including in this repo's setup steps.

## Basic navigation commands

| Command | What it does |
|---|---|
| `pwd` | Print working directory, shows where you are right now |
| `ls` | List files and folders in the current location |
| `ls -la` | Same, but shows hidden files (like `.zshrc`) and details like file size |
| `cd foldername` | Move into a folder |
| `cd ..` | Go up one level, back to the parent folder |
| `cd ~` | Go to your home folder from anywhere |
| `open .` | Open the current folder in Finder |

**Example:** navigate to a project folder on your Desktop:

```shell
cd ~/Desktop/my-project
```

## Other useful commands

| Command | What it does |
|---|---|
| `clear` | Clears the terminal screen |
| `cat filename` | Print the contents of a file |
| `mkdir foldername` | Create a new folder |
| `mv oldname newname` | Rename or move a file |
| `cp file destination` | Copy a file |
| `rm filename` | Delete a file. No undo, be careful |

## A few more things that'll save you time

**Tab completion:** start typing a command, file, or folder name, then press `Tab`. The terminal tries to finish it for you. Press `Tab` twice if there are multiple matches, it'll show you the options.

**Up arrow for history:** press the `↑` (up arrow) key to bring back your last command. Keep pressing it to go further back. This is what the HISTORY settings in `.zshrc` are for.

**Spaces in names:** if a file or folder name has a space in it (like `Application Support`), the terminal reads the space as the end of the name unless you handle it. Two ways to fix it:
- Wrap the whole path in quotes: `"Application Support"`
- Or put a `\` before the space: `Application\ Support`

**Case matters:** unlike Finder, the terminal treats `File.txt` and `file.txt` as two different names. Typos in capitalization are a common reason a command says "not found."

**Password prompts are invisible:** if a command starts with `sudo` (admin/superuser access) and asks for your password, nothing will appear on screen as you type, not even dots. That's normal, just type your password and press Enter.

**Stuck in a program:** some commands (like `less` or `top`) take over the whole screen. Press `q` to quit them and get back to your normal prompt. `Ctrl + C` is for canceling a command that's still running, not for exiting one of these.

## What's your shell

Zsh is the default shell on a Mac, the program that actually reads and runs the commands you type. This repo's `.zshrc` setup assumes you're using it.

Check which shell you're running:

```shell
echo $SHELL
```

If it says `/bin/zsh`, you're set. If not:

```shell
chsh -s /bin/zsh
```

*What this does:* switches your default shell to Zsh. You may need to quit and reopen the terminal for it to take effect.

## Next steps

Once you're comfortable with the basics above, head back to the [main README](../README.md) to set up the Ghostty theme and `.zshrc` in this repo.
