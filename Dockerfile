FROM rastasheep/ubuntu-sshd:14.04
RUN    apt-get update
RUN    apt-get upgrade -y
RUN    apt-get install -y curl
RUN    apt-get install -y php5-cli php5 php-pear php5-mysqlnd php5-json php5-curl php5-gd php5-gmp php5-imap php5-mcrypt
RUN    apt-get install -y php-fpm
RUN    apt-get install -y nginx
RUN    apt-get install -y mysql-server
RUN    apt-get install -y beanstalkd
RUN    curl -sS https://getcomposer.org/install | php
RUN    mv composer.phar /usr/local/bin/composer
