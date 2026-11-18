#/bin/bash

docker network create tplb

docker build -t im-nginx-lb ./tp-A

#creation de deux dossiers partagés pour les conteneurs nginx
mkdir -p shared1 shared2
echo "<h1>Hello 1</h1>" > shared1/index.html
echo "<h1>Hello 2</h1>" > shared2/index.html

#Lancement des conteneurs nginx
docker run -d --rm \
    --name nginx1 \
    -p 81:80 \
    --network tplb \
    -v "$(pwd)/shared1":/usr/share/nginx/html \
    nginx
    
docker run -d --rm \
    --name nginx2 \
    -p 82:80 \
    --network tplb \
    -v "$(pwd)/shared2":/usr/share/nginx/html \
    nginx

# lancement du conteneur nginx-lb question f
docker run --name nginx-lb -p 83:80 --network tplb im-nginx-lb

