for DOTFILE in `find ~/mac-dev-setup/dotfiles/**/*.zsh`
do
  [ ! -f “$DOTFILE” ] && source "$DOTFILE"
done