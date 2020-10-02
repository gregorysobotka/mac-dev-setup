
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