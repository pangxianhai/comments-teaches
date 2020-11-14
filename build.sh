#!/bin/bash

function start() {
  cd /Users/pangxianhai/projects/go/src/comments-teaches/comments-web
  npm run build  
  docker build -t comments-teaches --rm=true .
  docker run -d --name comments-teaches-container --restart always \
    --net docker-bridge \
    -p 6060:3000 \
    -v /Users/pangxianhai/workspace/comments-teaches/logs/:/usr/local/comments-teaches-web/logs/ \
    comments-teaches:latest
}

function stop() {
  if [ -n "$(docker ps -a | grep comments-teaches-container)" ]; then
    docker stop comments-teaches-container
    docker rm comments-teaches-container
  else
    echo "comments-teaches-container not start!"
  fi
  if [ -n "$(docker images | grep 'none')" ]; then
    docker rmi --force $(docker images | grep "none" | awk '{print $3}')
  fi
}

if [ "$1" == "start" ]; then
  stop
  start
elif [ "$1" == "stop" ]; then
  stop
else
  echo $0 "[start|stop]"
fi
