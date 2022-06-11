FROM kserge2001/centos-ssh
MAINTAINER student
RUN yum update -y
RUN yum install httpd -y
RUN service httpd start
EXPOSE 80
COPY ./code_test/* /var/www/html
CMD apachectl -D FOREGROUND
