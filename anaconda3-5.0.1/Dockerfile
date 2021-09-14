FROM continuumio/anaconda3:5.0.1

LABEL maintainer="白云信科，研发中心"

ENV TZ=Asia/Shanghai
RUN ln -sf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

EXPOSE 8883
