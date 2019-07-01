#!/bin/sh

# Use this script when having a new Mac

# Shows build time for Xcode
defaults write com.apple.dt.Xcode ShowBuildOperationDuration -bool YES

# Install brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew bundle install
brew cask cleanup

# Install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
# After install, add plugins=(zsh-autosuggestions) to list of plugins in oh-my-zsh

git clone git://github.com/zsh-users/zsh-syntax-highlighting $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
# After install, add plugins=(zsh-syntax-highlighting) to list of plugins in oh-my-zsh
# After adding plugin, run: source ~/.zshrc

# Copy zsh theme 
cp kevinnguy.zsh-theme ~/.oh-my-zsh/themes

