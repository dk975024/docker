FROM httpd:latest
RUN cp index.html /var/www/html/
EXPOSE 80
