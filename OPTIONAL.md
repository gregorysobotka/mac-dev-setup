
```
optional load on input
# print files modified/changed over previous 5 days
find $CUSTOM_IMPORT_PATH -type f -ctime +5 -exec ls -l {} \; | grep -v ".*/\.git/.*"

read "continueLoading?Press y and enter to continue: "
if [[ "$continueLoading" =~ ^[Yy]$ ]]
then
  for DOTFILE in `find $CUSTOM_IMPORT_PATH/dotfiles/**/*.zsh`
  do
    [ ! -f “$DOTFILE” ] && source "$DOTFILE"
  done
  echo "Loaded dot files"
else
  echo "dot files NOT loaded"
fi
```

```
BREW_TAP_FILE=${IMPORT_PATH}/brew/brew-taps.txt
BREW_CASK_FILE=${IMPORT_PATH}/brew/brew-cask-installs.txt
BREW_INSTALL_FILE=${IMPORT_PATH}/brew/brew-installs.txt

BREW_DEPENDENCIES = $(shell cat ${BREW_INSTALL_FILE})
BREW_CASK_DEPENDENCIES = $(shell cat ${BREW_CASK_FILE})
BREW_TAP_DEPENDENCIES = $(shell cat ${BREW_TAP_FILE})

brew cask install ${BREW_CASK_DEPENDENCIES}
brew install ${BREW_DEPENDENCIES}

brew list --cask > ${BREW_CASK_FILE}
brew leaves > ${BREW_INSTALL_FILE}
brew tap > ${BREW_TAP_FILE}
```