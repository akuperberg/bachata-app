#!/bin/sh

# Install docker, docker-compose and Node.

# go to node server folder.
cd node-server

## build the image with docker file
docker build -t node_server_image .

cd ..



#-----------Angular build started------------
cd angular-app

npm install

npx -p @angular/cli@15.0.3 ng build

## build the image with docker file
docker build -t angular_app_image .

cd ..


mkdir ./dbData


