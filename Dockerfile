FROM centos
RUN yum update 
RUN yum install httpd -y
RUN yum clean 
EXPOSE 80
