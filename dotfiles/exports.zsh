# Golang
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin

# Java
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export JAVABIN=${JAVA_HOME}/bin

# Python
export POETRYBIN=$HOME/.poetry/bin

# NVM
export NVM_DIR=~/.nvm 
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

PATH=$PATH:$GOPATH:$GOBIN:$JAVABIN:$POETRYBIN