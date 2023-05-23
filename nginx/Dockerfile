FROM ghcr.io/nginx-proxy/nginx-proxy:1.3.1-alpine

ADD ./conf.d /etc/nginx/conf.d
ADD ./vhost.d /etc/nginx/vhost.d
RUN ln -s /etc/nginx/vhost.d-letsencrypt/default /etc/nginx/vhost.d/default
