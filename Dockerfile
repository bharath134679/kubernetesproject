FROM centos:latest
MAINTAINER bharath134679@gmail.com
RUN yum install -y httpd \
  zip \
unzip
ADD htpps://www.free.css.com/assets/files/free-css-templates/download/page258/loxury.zip  /var/www/html/
WORKDIR /var/www/html
RUN cp -rvf loxury/* .
RUN rm -rf loxury loxury.zip
CMD ["/usr/sbin/httpd","-D", "FOREGROUND"]
EXPOSE 80
