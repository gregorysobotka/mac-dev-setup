brew-save-install() {
  brew list > $CUSTOM_IMPORT_PATH/brew/brew-installs.txt
}

brew-save-cask() {
  brew list --cask > $CUSTOM_IMPORT_PATH/brew/brew-cask-installs.txt
}

brew-install() {
  brew install $(< $CUSTOM_IMPORT_PATH/brew/brew-installs.txt )
}

brew-install-cask() {
  brew cask install $(< $CUSTOM_IMPORT_PATH/brew/brew-cask-installs.txt )
}