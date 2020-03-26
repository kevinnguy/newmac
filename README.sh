#!/bin/sh

# Use this script when having a new Mac

# Shows build time for Xcode
defaults write com.apple.dt.Xcode ShowBuildOperationDuration -bool YES

# Turn off hyperlink auditing
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2HyperlinkAuditingEnabled -bool false

# Install brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew bundle install
brew cask cleanup

# Install zsh and plugins
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

# Copy zsh settings
cp .zshrc ~/
cp kevinnguy.zsh-theme ~/.oh-my-zsh/themes

# Copy gitconfig
cp .gitconfig ~/

# install forked programs manually
echo "Install forked version of Franz: https://github.com/kevinnguy/franz"

# Install karabiner config in safari
# karabiner://karabiner/assets/complex_modifications/import?url=https://raw.githubusercontent.com/kevinnguy/newmac/master/karabiner.json
# karabiner://karabiner/assets/complex_modifications/import?url=https://raw.githubusercontent.com/kevinnguy/newmac/08cccf7d599404efe894687c9a0daa4b47e1ddbd/karabiner.json
