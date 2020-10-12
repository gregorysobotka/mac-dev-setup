# cheat sheet

cs-docker() {
  echo " \
    \n
    ************************
    docker ps 
    docker ps -a 
    docker images 
    docker run 
    docker logs 
    docker volume ls 
    docker rm 
    docker rmi
    docker tag IMAGE_ID PROJECT_NAME:TAG_VALUE
    ************************
  "
}

cs-docker-compose(){
  echo "
  [networking] https://docs.docker.com/compose/networking/
  [config] https://docs.docker.com/compose/reference/config/
  "
}