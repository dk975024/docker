FROM httpd:latest
RUN rm -rf index.html /usr/local/apache2/htdocs/
COPY index.html/ /usr/local/apache2/htdocs/
EXPOSE 80
