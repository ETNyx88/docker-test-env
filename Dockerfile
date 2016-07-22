FROM debian:stable
RUN apt-get update -y && apt-get upgrade -y && apt-get install -y \
  git \
  php5-cli \
  php5-curl \
  php5-mcrypt \
  php5-mysql \
  curl \
  mariadb-client \
  openssh-client \
