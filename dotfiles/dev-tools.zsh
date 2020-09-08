# VS code 'code' tool
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

# Hosts file

HOSTFILE=/private/etc/hosts

# add-host() {
# use: add host file mapping via command line
# command: add-host my-app.local
# result: The following is appended to /private/etc/hosts 127.0.0.1 my-app.local 
  # echo "127.0.0.1 $1" >> $HOSTFILE
# }

open-hosts() {
  code $HOSTFILE
}

view-hosts() {
  echo "$(<$HOSTFILE)"
}

# END Hosts file