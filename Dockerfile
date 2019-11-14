FROM debian:stable
RUN apt-get update -y && apt-get upgrade -y && apt-get install -y \
  git curl gnupg imagemagick \
  apache2 libapache2-mod-php \
  php-cli php-curl php-mysql php-xml php-zip php-gd php-mbstring php-bz2 \
  mariadb-server mariadb-client openssh-client \
  composer yarnpkg build-essential ruby ruby-dev grunt && \
 alias yarn=yarnpkg && \
 gem install sass compass && \
 curl -sS -L https://dl.google.com/linux/linux_signing_key.pub | apt-key add - && \
 ls -la /etc/apt/sources.list.d/ && \
 echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list && \
 apt-get update -y && \
 apt-get install -y google-chrome-stable && \
 ln -s $(which yarnpkg) /usr/bin/yarn && \
 printf "<VirtualHost *:80>\nDocumentRoot /build/finvest.cz-master/www/doc_root\n<Directory /build/finvest.cz-master/www>\nAllowOverride All\nRequire all granted\n</Directory>\n</VirtualHost>" > /etc/apache2/sites-enabled/000-default.conf && \
 service mysql restart && \
 touch db.sql && \
 printf "CREATE DATABASE \`finvest\`;\nCREATE USER finvest@localhost IDENTIFIED VIA mysql_native_password USING '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257';\nGRANT ALL PRIVILEGES ON * . * TO 'finvest'@'localhost';\nFLUSH PRIVILEGES;\n" > db.sql && \
 mysql < db.sql
