# Commands

describe-helpers(){
  echo "
  [history | grep {search}] hg
  "
}


hg() {
  history | grep "$@"
}

reload() {
  echo "reloading ... "
  echo "source ~/.zshrc"
  source ~/.zshrc
}

log-to-file() {
  DATE_NOW=$(date +"%m-%d-%Y")
  DATE_NOW_FILENAME="$CUSTOM_LOG_FILES/$DATE_NOW.txt"
  # 
  script -a "$DATE_NOW_FILENAME"
}

# Aliases 

alias rl=reload