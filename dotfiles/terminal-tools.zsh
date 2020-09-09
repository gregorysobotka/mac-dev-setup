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

log-to-file() {
  DATE_NOW=$(date +"%m-%d-%Y")
  DATE_NOW_FILENAME="$CUSTOM_LOG_FILES/$DATE_NOW.txt"
  # 
  script -a "$DATE_NOW_FILENAME"
}