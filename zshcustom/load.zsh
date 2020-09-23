for DOTFILE in `find $CUSTOM_IMPORT_PATH/dotfiles/**/*.zsh`
do
  [ ! -f “$DOTFILE” ] && source "$DOTFILE"
done