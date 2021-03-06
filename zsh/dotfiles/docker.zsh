#!/bin/zsh

# docker

dpsa() {
  docker ps -a
}
dps() {
  docker ps
}
dpsg(){
  docker ps -a | grep $1
}
dup() {
  docker start $1
}

# docker-compose

dcom-up() {
  # docker-compose build $1 && docker-compose up -d $1
  docker-compose up -d "$@"
}

dcom-match() {
  dcom config --services | grep $1
}

dcom-um() {
  serviceName=$(docker-compose config --services | grep "$1" )
  dcom-up "$serviceName"
}