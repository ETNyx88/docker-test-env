FROM debian:stable
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y git curl mariadb-client openssh-client
RUN apt-get -y install apt-transport-https lsb-release ca-certificates
RUN curl -ssL -o /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
RUN sh -c 'echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list'
RUN apt-get update -y
RUN apt-get install -y php7.1 php7.1-cli php7.1-curl php7.1-mcrypt php7.1-mysql php7.1-xml php7.1-zip php7.1-gd php7.1-mbstring
