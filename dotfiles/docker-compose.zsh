d-c(){
  docker-compose "$@"
}

d-ca() {
  docker-compose build $1 && docker-compose up -d $1
}