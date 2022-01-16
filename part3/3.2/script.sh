#!/bin/bash
apk add git
read -p "Enter GitHub repository URL: " url
git clone $url
dir=$(echo ${url##*/}) #Extracts repository name from URL
cd /usr/src/app/$dir

dir=$(echo "$dir" | tr '[:upper:]' '[:lower:]') #Converts URL to lowercase for Docker

read -p "Enter DockerHub username: " user
read -s -p "Enter DockerHub password: " pass

docker build . -t $dir
docker login -u $user -p $pass
docker tag $dir $user/$dir
docker push $user/$dir
