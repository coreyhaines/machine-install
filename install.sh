#!/usr/bin/env bash

echo "updating brew"
brew update
brew doctor
brew install brew-cask

echo "installing system tools"

echo "installing and configuring git"
brew install git
git config --global user.name "Corey Haines"
git config --global user.email "coreyhaines@gmail.com"

echo "installing user apps"
brew cask install dropbox
open /Users/coreyhaines/Applications/Dropbox.app
echo "Make sure to set up what dropbox folders to selectively sync, so you can get 1Password vault faster"
brew cask install alfred
open /Users/coreyhaines/Applications/Alfred\ 2.app
brew cask install google-chrome
brew cask install sizeup
open /Users/coreyhaines/Applications/SizeUp.app
brew cask install caffeine
open /Users/coreyhaines/Applications/Caffeine.app
brew cask install onepassword
echo "Wait for dropbox to sync before opening up onepassword"
brew cask install steam


echo "installing programming tools"
# brew cask install macvim # appears to not work in 10.10
brew cask install virtualbox
brew cask install vagrant

echo "cleaning up"
brew cask cleanup
brew cleanup

echo "Machine is mostly set up"
echo "Still need to install the following"
echo "MacVim"
