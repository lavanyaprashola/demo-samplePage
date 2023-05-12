FROM ubuntu:22.04
WORKDIR /var/www/html
RUN apt update && apt install apache2 -y 
RUN apt-get install -y tzdata 
RUN apt install php php-mysql -y
COPY SamplePage.php  /var/www/html
CMD ["mv","index.html"," index.ht"]
EXPOSE 8080

