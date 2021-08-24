FROM mysql:8.0.19

LABEL maintainer="白云信科，研发中心"

ENV TZ=Asia/Shanghai
RUN ln -sf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

EXPOSE 3306
