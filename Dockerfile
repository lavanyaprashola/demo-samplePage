FROM ubuntu:22.04
WORKDIR /var/www/html
RUN apt update
RUN apt install –y apache2
RUN apt install php php msysql -y
COPY SamplePage.php  /var/www/html
CMD mv index.html index.ht
EXPOSE 8080
