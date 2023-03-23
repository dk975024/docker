FROM centos
RUN yum install httpd -y
RUN yum clean 
EXPOSE 80
