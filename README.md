# mxsandmann .dotfiles

```zsh
# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install from Brewfile
brew bundle --file ~/.dotfiles/Brewfile

# Config for Helix
ln -s ~/.dotfiles/helix/config.toml ~/.config/helix/config.toml
```
