# bluboya
Reworking of blubo


########################################################################################

# HOW2 DETAILS AND DEBUG LOGGERY / HACKS / NOTES

########################################################################################

### INTRO / PREAMBLE

http://gliderlabs.viewdocs.io/docker-alpine/

### WORK

FROM ubuntu-debootstrap:14.04
RUN apt-get update -q \
  && DEBIAN_FRONTEND=noninteractive apt-get install -qy nginx \
  && apt-get clean \
  && rm -rf /var/lib/apt
ENTRYPOINT ["nginx"]
This took 19 seconds to build and yields a 164 MB image. Eww. Start doing this:




## Dockerfile to build nginx in Alpine

FROM library/alpine:latest

# Install nginx
RUN echo "http://dl-4.alpinelinux.org/alpine/v3.3/main" >> /etc/apk/repositories && \
    apk add --update nginx=1.8.1-r1 && \
    rm -rf /var/cache/apk/* && \
    chown -R nginx:www-data /var/lib/nginx

# Add the files
# ADD < CONF FILES SRC DEST FIGURE THIS OUT > 

# Expose the ports for nginx
EXPOSE 80 443

--- thats it, now build ..


$ docker build --tag nginx_in_alpine . 

-- general pattern is ..

$ sudo docker build -t my_artifact .




