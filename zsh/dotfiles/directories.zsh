#!/bin/zsh

cwd() {
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

dir-dif() {
  # diff -rq $1 $2
  git diff --no-index $1 $2
}