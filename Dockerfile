FROM debian:stable
RUN apt-get update -y && apt-get upgrade -y && apt-get install -y \
  git \
  php-cli \
  php-curl \
  php-mcrypt \
  php-mysql \
  php-xml \
  curl \
  mariadb-client \
  openssh-client \
