FROM centos
RUN yum -y update
RUN yum -y install httpd
COPY ./index.html /var/www/html/index.html
EXPOSE 80
CMD ["httpd", "-D", "FOREGROUND"]
