# nginx Dockerfile
# https://github.com/dockerfile/nginx

FROM ubuntu

# process to install nginx
RUN \
  # May be necessary to: apt-get install software-properties-common
  apt-get update && \
  apt-get install -y nginx && \
  rm -rf /var/lib/apt/lists/* && \
  echo "\ndaemon off;" >> /etc/nginx/nginx.conf && \
  chown -R www-data:www-data /var/lib/nginx

# copy web directory
COPY . /usr/share/nginx/html

# define default command
CMD ["nginx"]

# expose port
EXPOSE 80
