FROM debian:stable
RUN apt-get update -y && apt-get upgrade -y && apt-get install -y \
 git php-cli php-curl php-mysql php-xml php-zip php-gd php-mbstring \
 php-bz2 curl mariadb-client openssh-client gnupg && \
 curl -sS -L https://dl.google.com/linux/linux_signing_key.pub | apt-key add - && \
 ls -la /etc/apt/sources.list.d/ && \
 echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list && \
 apt-get update -y && \
 apt-get install -y google-chrome-stable imagemagick
