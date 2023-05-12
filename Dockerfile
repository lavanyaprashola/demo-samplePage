FROM ubuntu
WORKDIR /var/www/html
RUN apt update
RUN apt install –y apache2
RUN apt install php php msysql -y
CMD mv index.html index.ht
COPY SamplePage.php  /var/www/html
EXPOSE 8080
