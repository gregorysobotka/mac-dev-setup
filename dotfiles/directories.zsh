pwdc() {
  pwd | pbcopy
}

mk() {
  mkdir -p "$1" && cd "$1"
}

show-hidden-files-finder(){
  defaults write com.apple.Finder AppleShowAllFiles true
}

lsg() {
  ls -a | grep "$@"
}