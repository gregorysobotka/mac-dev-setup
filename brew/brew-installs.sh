#!/bin/zsh
echo "brew install"
brew install $(< $CUSTOM_IMPORT_PATH/brew/brew-installs.txt )