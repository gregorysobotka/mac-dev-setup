#!/bin/zsh

### Custom Paths (start)
HOSTSFILE=/private/etc/hosts
ZSHPATH=$CUSTOM_IMPORT_PATH
ZSHRCPATH=~/.zshrc
DOTFILEPATH=$CUSTOM_IMPORT_PATH/dotfiles
CUSTOM_LOG_FILES=$CUSTOM_IMPORT_PATH/logs
### Custom Paths (end)

# Golang
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
# Java
export JAVA_HOME=`/usr/libexec/java_home`
export JAVABIN=${JAVA_HOME}/bin
export OPENJDK=/usr/local/opt/openjdk/bin
# Python
export POETRYBIN=$HOME/.poetry/bin
eval "$(pyenv init -)"
# NVM
export NVM_DIR=~/.nvm 
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
# kubernetes
# source <(kubectl completion zsh)
# complete -F __start_kubectl k

PATH=$PATH:$GOPATH:$GOBIN:$JAVABIN:$POETRYBIN:$OPENJDK

for DOTFILE in `find $CUSTOM_IMPORT_PATH/zsh/dotfiles/**/*.zsh`
do
  [ -f "$DOTFILE" ] && source "$DOTFILE"
done