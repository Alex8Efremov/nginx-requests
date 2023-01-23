FROM nginx:1.23.2-alpine

COPY ./config/default.conf.template /etc/nginx/templates/default.conf.template
COPY ./config/nginx.conf /etc/nginx/nginx.conf
