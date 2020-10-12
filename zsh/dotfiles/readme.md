### Add to .zshrc

#### update
```
ZSH_CUSTOM=~/zshcustom
```

#### end of file
```
for DOTFILE in `find ~/dotfiles/**/*.zsh`
do
  [ ! -f “$DOTFILE” ] && source "$DOTFILE"
done
```

https://dotfiles.github.io/