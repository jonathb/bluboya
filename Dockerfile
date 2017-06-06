FROM library/alpine:latest
#FROM smebberson/alpine-base:3.0.0

# Install nginx
RUN echo "http://dl-4.alpinelinux.org/alpine/v3.3/main" >> /etc/apk/repositories && \
    apk add --update nginx=1.8.1-r1 && \
    rm -rf /var/cache/apk/* && \
    chown -R nginx:www-data /var/lib/nginx

# Add the files
# ADD FIGURE THIS OUT

# Expose the ports for nginx
EXPOSE 80 443
