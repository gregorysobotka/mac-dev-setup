# Docker

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
