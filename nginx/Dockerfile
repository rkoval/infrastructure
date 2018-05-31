FROM jwilder/nginx-proxy:alpine-0.6.0

ADD ./conf.d /etc/nginx/conf.d
ADD ./vhost.d /etc/nginx/vhost.d
RUN ln -s /etc/nginx/vhost.d-letsencrypt/default /etc/nginx/vhost.d/default
