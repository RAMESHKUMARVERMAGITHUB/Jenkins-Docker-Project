FROM ubuntu:latest
MAINTAINER vikashashoke@gmail.com

# Update package lists and install necessary packages
RUN apt-get update && \
    apt-get install -y apache2 zip unzip && \
    apt-get clean

# Download and extract website files
ADD https://www.free-css.com/assets/files/free-css-templates/download/page265/shine.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip shine.zip && \
    cp -rvf shine/* . && \
    rm -rf shine shine.zip

# Expose port 80
EXPOSE 80

# Start Apache in foreground
CMD ["apache2ctl", "-D", "FOREGROUND"]

# FROM ubuntu:latest
# MAINTAINER vikashashoke@gmail.com

# # Update package lists and install necessary packages
# RUN apt-get update && \
#     apt-get install -y apache2 zip unzip && \
#     apt-get clean

# # Download and extract website files
# #ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
# ADD https://www.free-css.com/assets/files/free-css-templates/download/page265/shine.zip /var/www/html/
# WORKDIR /var/www/html/
# RUN unzip photogenic.zip && \
#     cp -rvf photogenic/* . && \
#     rm -rf photogenic photogenic.zip

# # Expose port 80
# EXPOSE 80

# # Start Apache in foreground
# CMD ["apache2ctl", "-D", "FOREGROUND"]



# FROM  centos:latest
# MAINTAINER vikashashoke@gmail.com
# RUN yum update -y
# RUN yum install httpd -y 
# RUN yum install zip -y
# RUN yum install unzip -y
# ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
# WORKDIR /var/www/html/
# RUN unzip photogenic.zip
# RUN cp -rvf photogenic/* .
# RUN rm -rf photogenic photogenic.zip
# CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
# EXPOSE 80
 
 
# FROM  centos:latest
# MAINTAINER vikashashoke@gmail.com
# RUN yum install -y httpd \
#  zip\
#  unzip
# ADD https://www.free-css.com/assets/files/free-css-templates/download/page265/shine.zip /var/www/html/
# WORKDIR /var/www/html/
# RUN unzip shine.zip
# RUN cp -rvf shine/* .
# RUN rm -rf shine shine.zip
# CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
# EXPOSE 80   
