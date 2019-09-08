docker-compose up -d

if [[ "$OSTYPE" == "msys" ]]; then 
    winpty docker exec -it thinkr-php bash
else
    docker exec -it thinkr-php bash
fi