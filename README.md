### Update (in .zshrc file)
```
export CUSTOM_IMPORT_PATH=~/mac-dev-setup
ZSH_CUSTOM=${CUSTOM_IMPORT_PATH}/zsh/ohmyzsh-custom
ZSH_PLUGINS=$ZSH_CUSTOM/plugins.txt

if [ -f "$ZSH_PLUGINS" ] ; then
  plugins=($(cat $ZSH_PLUGINS))
else 
  plugins=(git)
fi
```

### Resources
[Tools](/install-tools)

### Notes
dotfiles: https://dotfiles.github.io/

