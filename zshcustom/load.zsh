#!/bin/zsh
# echo "loading custom dotfiles ..."

export PATH="/usr/local/opt/openjdk/bin:$PATH"

for DOTFILE in `find $CUSTOM_IMPORT_PATH/dotfiles/**/*.zsh`
do
  [ ! -f “$DOTFILE” ] && source "$DOTFILE"
done