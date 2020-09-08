# Commands
lsg() {
  ls -a | grep $1
}

hg() {
  history | grep $1
}

reload() {
  echo "reloading ... "
  echo "source ~/.zshrc"
  source ~/.zshrc
}

show-hidden-files-finder(){
  defaults write com.apple.Finder AppleShowAllFiles true
}

mk() {
  mkdir -p "$1" && cd "$1"
}