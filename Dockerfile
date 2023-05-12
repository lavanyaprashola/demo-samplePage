FROM php:7.4-apache
WORKDIR /var/www/html
ENV DEBIAN_FRONTEND noninteractive
RUN apt update && apt install apache2 -y 
RUN apt install php php-mysql -y
COPY SamplePage.php  /var/www/html
CMD cd /var/www/html
CMD ["mv","index.html"," index.ht"]
EXPOSE 8080




