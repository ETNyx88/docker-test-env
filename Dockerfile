FROM debian:stable
RUN apt-get update -y && apt-get upgrade -y && apt-get install -y \
  git \
  php-cli \
  php-curl \
  php-mysql \
  php-xml \
  php-zip \
  php-gd \
  php-mbstring \
  php-bz2 \
  curl \
  mariadb-client \
openssh-client \
