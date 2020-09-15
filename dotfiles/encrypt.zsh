describe-encrypt(){
  echo "
    encrypt-aes256-file
    decrypt-aes256-file
    *** *** *** *** ***
    encrypt-aes256-str
    decrypt-aes256-str
    *** *** *** *** ***
    base64-in-str
    base64-out-str
  "
}

encrypt-aes256-file(){
  openssl aes-256-cbc -a -salt -in $1 -out $2
}

decrypt-aes256-file(){
  openssl aes-256-cbc -d -a -salt -in $1 -out $2
}

encrypt-aes256-str(){
  echo $1 | openssl aes-256-cbc -a -salt | pbcopy
}

decrypt-aes256-str(){
  echo $1 | openssl aes-256-cbc -d -a -salt
}

base64-in-str(){
  echo $1 | openssl enc -base64 | pbcopy
}

base64-out-str(){
  echo $1 | openssl enc -base64 -d
}