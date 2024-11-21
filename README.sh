#!/bin/sh

# Use this script when having a new Mac

# To bundle brew installs: brew bundle dump

# install Xcode everything first
sudo xcodebuild -license

# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo "✅ installed homebrew"

echo >> /Users/kevinnguy/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/kevinnguy/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

brew bundle install
echo "✅ installed all homebrew stuff"

brew cask cleanup
echo "✅ cleaned up brew install stuff"


# Install zsh and plugins
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
echo "✅ installed oh my zsh"


# Copy zsh settings
cp .zshrc ~/
cp kevinnguy.zsh-theme ~/.oh-my-zsh/themes
echo "✅ copied zsh settings"

# Copy gitconfig 
cp .gitconfig ~/
echo "✅ copied gitconfig"

# Copy tigrc
cp .tigrc ~/
echo "✅ copied tiger settings"


# Copy rectangle config plist
cp com.knollsoft.Rectangle.plist ~/Library/Preferences/
echo "✅ copied rectangle config settings"

# Copy karabiner config 
cp -R .config ~/
echo "✅ copied karabiner settings"

