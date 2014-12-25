# Install for a new Mac

## install.sh
```
#!/bin/sh

# Install brew 
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install mongodb
brew install heroku-toolbelt
brew install node
brew install tig

# Install cask
brew install brew-cask
brew cask install google-chrome
brew cask install mailbox
brew cask install slack
brew cask install spotify
brew cask install sketch
brew cask install testflight
brew cask install iterm2
brew cask install sublime-text
brew cask install dropbox
brew cask install evernote
brew cask install spectacle
brew cask install scroll-reverser
brew cask install skype
brew cask install sourcetree
brew cask install steam
brew cask install vlc
brew cask install transmission
brew cask install audacity
brew cask install ifunbox
brew cask install gimp
brew cask install the-unarchiver
brew cask install imageoptim
brew cask cleanup

```