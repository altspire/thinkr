FROM php:7.2-cli-stretch

RUN apt-get update \
  && apt-get upgrade -y \
  && apt-get install -y --no-install-recommends \
  apt-utils \
  git \
  zip \
  nano

VOLUME /root/.composer/cache

# Get composer installed to /usr/local/bin/composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

COPY . /usr/src/myapp
WORKDIR /usr/src/myapp