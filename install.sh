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
brew cask install google-chrome
brew cask install steam

echo "installing productivity tools"
brew cask install sizeup
open /Users/coreyhaines/Applications/SizeUp.app
brew cask install alfred
open /Users/coreyhaines/Applications/Alfred\ 2.app
brew cask install caffeine
open /Users/coreyhaines/Applications/Caffeine.app

echo "installing programming tools"
brew cask install virtualbox
brew cask install vagrant

echo "cleaning up"
brew cask cleanup
brew cleanup
