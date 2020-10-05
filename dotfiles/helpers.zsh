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
  source ~/.zshrc
}

log-to-file() {
  DATE_NOW=$(date +"%m-%d-%Y")
  DATE_NOW_FILENAME="$CUSTOM_LOG_FILES/$DATE_NOW.txt"
  # 
  script -a "$DATE_NOW_FILENAME"
}

# check if installed
installed() {
  # Exit if input is empty
  if [[ ! -z $1 ]] ; then
    depInstalled="$(command -v $1)"
    # echo "$depInstalled"
    if [[ ! -z "$depInstalled" ]] ; then
      echo "EXISTS"
    fi
  fi
}

run-from-where() {
  command -v $1
}

# Reload Alias 
alias rl=reload