#!/bin/zsh

# Commands

edit-zsh(){
  code $ZSHPATH
}

edit-zshrc(){
  code $ZSHRCPATH
}

hg() {
  history | grep "$@"
}

reload() {
  exec zsh
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

# run-from-where() {
#   command -v $1
# }

env-grep() {
  printenv | grep $1
}

# Helper for cookiecutter development
project-slug(){
  cd \{\{cookiecutter.project_slug\}\}
}

start-app-services() {
  docker-compose up -d postgres elasticsearch elastic-apm kibana
}

# Helpers for hosts file

# add-host() {
# use: add host file mapping via command line
# command: add-host my-app.local
# result: The following is appended to /private/etc/hosts 127.0.0.1 my-app.local 
  # echo "127.0.0.1 $1" >> $HOSTFILE
# }

view-hosts() {
  echo "$(<$HOSTSFILE)"
}

edit-hosts() {
  code $HOSTSFILE
}