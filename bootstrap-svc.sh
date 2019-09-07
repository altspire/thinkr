docker build -t thinkr .
docker container rm -f thinkr-php
docker run -it -d --name thinkr-php thinkr