# run redis

docker container rm -f thinkr-redis
docker run --name thinkr-redis -d redis

# build and run php-cli

docker build -t thinkr .
docker container rm -f thinkr-php
docker run -it -d --name thinkr-php thinkr

if [[ "$OSTYPE" == "msys" ]]; then 
    winpty docker exec -it thinkr-php bash
else
    docker exec -it thinkr-php bash
fi