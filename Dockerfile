FROM ubuntu:18.04

#RUN apt-add-repository ppa:ondrej/php
#RUN DEBIAN_FRONTEND=noninteractive
#RUN apt-get install -y tzdata

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y curl
RUN apt-get install -y apt-utils

#RUN dpkg -i *.deb
RUN DEBIAN_FRONTEND=noninteractive
RUN apt-get install -y tzdata

RUN apt-get install -y php-pear php7.2-curl php7.2-dev php7.2-gd php7.2-mbstring php7.2-zip php7.2-mysql php7.2-xml php7.2-fpm
RUN apt-get install -y php7.2
RUN apt-get install -y nginx
RUN apt-get install -y mysql-server
RUN apt-get install -y beanstalkd
#RUN curl -sS https://getcomposer.org/install | php -- --install-dir=/usr/local/bin --filename=composer
RUN php -r "readfile('https://getcomposer.org/installer');" | php
RUN mv composer.phar /usr/local/bin/composer.phar
