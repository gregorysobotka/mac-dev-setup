dcom-up() {
  docker-compose build $1 && docker-compose up -d $1
}

dcom-match() {
  dcom config --services | grep $1
}

dcom-up-match() {
  dcom config --services \
  | grep $1 \
  | echo $2 \
}