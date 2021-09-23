FROM nginx:latest

LABEL maintainer="白云信科，研发中心"

WORKDIR /etc/nginx

COPY ./nginx.conf ./
COPY ./conf.d/*.conf ./conf.d/

COPY ./html ./html

EXPOSE 80 443 8883 8888
