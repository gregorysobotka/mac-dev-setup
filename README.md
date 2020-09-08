### Add to .zshrc

#### update
```
ZSH_CUSTOM=~/mac-dev-setup/zshcustom
```

#### end of file
```
for DOTFILE in `find ~/mac-dev-setup/dotfiles/**/*.zsh`
do
  [ ! -f “$DOTFILE” ] && source "$DOTFILE"
done
```

https://dotfiles.github.io/