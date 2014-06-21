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
brew cask install alfred
brew cask install caffeine

echo "installing programming tools"
brew cask install virtualbox
brew cask install vagrant

echo "cleaning up"
brew cask cleanup
brew cleanup
