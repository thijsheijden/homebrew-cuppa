# Homebrew Tap for Cuppa

This is the official Homebrew tap for [Cuppa](https://github.com/thijsheijden/cuppa), a caffeine tracking TUI app with sync.

## Installation

```bash
brew tap thijsheijden/cuppa
brew install --force cuppa
```

If you get a database error on first run, remove the corrupted DB and restart:

```bash
rm ~/Library/Application\ Support/com.cuppa.cuppa/cuppa.db  # macOS
rm ~/.local/share/cuppa/cuppa.db                             # Linux
```

## Updating

```bash
brew upgrade cuppa
```

## Uninstallation

```bash
brew uninstall cuppa
brew untap thijsheijden/cuppa
```
