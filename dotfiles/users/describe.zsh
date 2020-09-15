all-users(){
  less /etc/passwd
}

all-user-names(){
  awk -F: '{ print $1}' /etc/passwd
}