#!/bin/sh

# Use this script when having a new Mac

# Shows build time for Xcode
defaults -currentHost write -g com.apple.dt.Xcode ShowBuildOperationDuration -bool YES

# Turn off hyperlink auditing
defaults -currentHost write -g com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2HyperlinkAuditingEnabled -bool false

# Turn off font smoothing
defaults -currentHost write -g AppleFontSmoothing -int 0

# To bundle brew installs: brew bundle dump

# Install brew
curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh
brew bundle install
brew cask cleanup

# Install zsh and plugins
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions


# Copy zsh settings
cp .zshrc ~/
cp kevinnguy.zsh-theme ~/.oh-my-zsh/themes

# Copy gitconfig 
cp .gitconfig ~/

# Copy tigrc
cp .tigrc ~/

# Copy rectangle config plist
cp com.knollsoft.Rectangle.plist ~/Library/Preferences/

# Copy karabiner config 
cp -R .config ~/
