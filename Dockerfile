FROM centos:7
RUN yum update -y
RUN yum install httpd -y
COPY ./index.html/ /var/www/html/
RUN systemctl start httpd.service
EXPOSE 80
