#!/bin/zsh
echo "brew cask install"
brew cask install $(< $CUSTOM_IMPORT_PATH/brew/brew-cask-installs.txt )