describe-encrypt(){
  echo "
    *** *** *** *** ***
    enc-str
    dec-str
    *** *** *** *** ***
    encrypt-aes256-file file-in.txt file-out.txt
    decrypt-aes256-file file-in.txt file-out.txt
    *** *** *** *** ***
    encrypt-aes256-str 'string to encrypt'
    encrypt-aes256-str-copy 'string to encrypt'
    decrypt-aes256-str 'string to decrypt'
    *** *** *** *** ***
    base64-in-str 'string to encode'
    base64-out-str 'string to decode'
    *** *** *** *** ***
  "
}


encrypt-aes256-file(){
  openssl aes-256-cbc -a -salt -in $1 -out $2
}

decrypt-aes256-file(){
  openssl aes-256-cbc -d -a -salt -in $1 -out $2
}

encrypt-aes256-str(){
  echo $1 | openssl aes-256-cbc -a -salt
}


encrypt-aes256-str-copy(){
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

alias enc-str=encrypt-aes256-str
alias dec-str=decrypt-aes256-str
