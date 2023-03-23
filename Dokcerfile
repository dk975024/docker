FROM centos
RUN yum update 
RUN yum install –y apache2 
RUN yum install –y apache2-utils 
RUN yum clean 
EXPOSE 80
CMD [“apache2ctl”, “-D”, “FOREGROUND”]
