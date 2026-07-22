# Terminal Starter Kit

A beginner-friendly starting point for making your Mac terminal look and feel better. Includes a Claude-inspired Ghostty theme (a color scheme for [Ghostty](https://ghostty.org), a fast, modern terminal app) and a starter `.zshrc` (the config file for Zsh, the default command-line shell on macOS).

New to the terminal? Start with [Using the Terminal](docs/using-the-terminal.md) before setting anything up below. Ready to install actual dev tools (Homebrew, Node.js, Claude Code, etc.)? See [Dev Environment Starter Kit](https://github.com/ngreenwall/dev-environment-starter-kit).

| Default Terminal | Ghostty, with this theme |
|---|---|
| ![Default Terminal](ghostty/terminal-default.png) | ![Ghostty with Claude-inspired theme](ghostty/terminal-ghostty.png) |

## What's in here

- `ghostty/ghostty-config.txt`: Settings for Ghostty. Colors, font, window padding, cursor style, and more. Every setting has an inline comment explaining what it does.
- `ghostty/palette-preview.png`, `ghostty/terminal-default.png`, `ghostty/terminal-ghostty.png`: Screenshots of the theme, including the before/after above.
- `zsh/starter-zshrc.txt`: A starter `.zshrc` file. Runs every time you open a new terminal window, and sets up things like command history, tab completion, and a colored prompt. Also has inline comments explaining each part.

## Ghostty: download and setup

**1. Download it.**

Easiest way, using [Homebrew](https://brew.sh) (a package manager, a tool for installing other software from the terminal):

```shell
brew install --cask ghostty
```

*What this does:* downloads and installs Ghostty, and keeps it updated automatically whenever you run `brew upgrade`.

Alternatively, download it directly from [ghostty.org](https://ghostty.org). If you already installed it this way and later switch to Homebrew, drag it out of your `Applications` folder first, then run the command above.

**2. Open the config file.**

Open Ghostty, click the menu bar, then go to **Ghostty > Settings**. This opens Ghostty's settings file in a text editor.

Behind the scenes, that file lives at:
```
~/Library/Application Support/com.mitchellh.ghostty/config
```
(The `~` means your home folder. You don't need to navigate there manually, the menu does it for you.)

**3. Back up your current config (optional, but recommended).**

If you already have settings in that file, save a copy first so you can undo this later:

```shell
cp ~/Library/Application\ Support/com.mitchellh.ghostty/config ~/Library/Application\ Support/com.mitchellh.ghostty/config.backup
```

*What this does:* makes a copy named `config.backup` in the same folder. If you ever want to go back to how things were, delete `config` and rename `config.backup` to `config`.

**4. Add the theme.**

Copy everything from this repo's `ghostty/ghostty-config.txt` and paste it into the file Ghostty opened. Save the file.

**Claude-inspired color palette:**
<br>
<img src="ghostty/palette-preview.png" alt="Color palette preview" width="600">

Want a different look instead? See the built-in theme option near the top of `ghostty-config.txt`.

**5. Reload Ghostty.**

Quit and reopen Ghostty to apply the changes.

**Want a specific font?** `ghostty-config.txt` leaves `font-family` blank, and lists a few popular options in the comment above it. Picking a name there doesn't install the font, you have to install it separately first.

If you installed Homebrew in the steps above:

```shell
brew install --cask font-jetbrains-mono
```
*What this does:* downloads and installs the JetBrains Mono font so Ghostty can use it. Swap the name for whichever font you picked.

No Homebrew? Download the font's `.ttf` or `.otf` files from its website (e.g. [JetBrains Mono](https://www.jetbrains.com/lp/mono/)), then double-click each file and click **Install Font** in the preview window that opens.

## The `.zshrc` file

`.zshrc` is a hidden config file for your terminal's shell (Zsh). It runs every time you open a new terminal window, and it's where you can set things like your prompt style, shortcuts (called aliases), and command history behavior.

**1. Open it.**

```shell
open -e ~/.zshrc
```
*What this does:* opens your `.zshrc` file in TextEdit. If the file doesn't exist yet, this command creates it.

**2. Back up your current `.zshrc` (optional, but recommended).**

If the file already has content in it, save a copy first so you can undo this later:

```shell
cp ~/.zshrc ~/.zshrc.backup
```

*What this does:* makes a copy named `.zshrc.backup` in your home folder. If you ever want to go back to how things were, delete `~/.zshrc` and rename `~/.zshrc.backup` to `~/.zshrc`.

**3. Add the starter config.**

Copy everything from this repo's `zsh/starter-zshrc.txt` and paste it into your `~/.zshrc`. Save the file.

**4. Apply the changes.**

```shell
source ~/.zshrc
```
*What this does:* reloads the file in your current terminal window immediately. Without this, the changes would only show up the next time you open a new window.

Every section in `starter-zshrc.txt` has a comment above it explaining what it does and why it's there, so it's worth a read through before you copy it over.

## Undo / start over

If something looks wrong or you just want your old setup back:

- **Ghostty:** delete `~/Library/Application Support/com.mitchellh.ghostty/config`, then rename `config.backup` (from step 3 above) back to `config`. Quit and reopen Ghostty.
- **Zsh:** delete `~/.zshrc`, then rename `~/.zshrc.backup` (from step 2 above) back to `~/.zshrc`. Run `source ~/.zshrc` or open a new terminal window.
- Didn't make a backup? You can also just delete the parts you pasted in and save the file again.

## Troubleshooting

- **Nothing looks different after pasting the Ghostty config:** make sure you quit and fully reopened Ghostty, not just opened a new window. Also double check you pasted into the file Ghostty's menu opened, not a different file.
- **Nothing looks different after pasting the `.zshrc` config:** run `source ~/.zshrc`, or close and reopen your terminal window.
- **You see a red error when opening a new terminal window:** you likely have a typo or missing character from copy-pasting. Open `~/.zshrc` again and compare it line-by-line against `zsh/starter-zshrc.txt`.
- **A font you picked doesn't show up:** the font needs to be installed on your Mac separately, see the font note above.

## Why "starter"

These files are a foundation, not a finished product. Read through the inline comments, decide what you like, and change anything to fit your own taste.
