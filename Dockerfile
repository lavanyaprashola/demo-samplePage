FROM ubuntu:22.04
WORKDIR /var/www/html
ENV DEBIAN_FRONTEND noninteractive
RUN apt update && apt install apache2 -y
RUN apt install php php-mysql -y
COPY SamplePage.php  /var/www/html
CMD cd /var/www/html
CMD ["mv","index.html"," index.php"]
EXPOSE 8080









