FROM mysql:8.0.19

LABEL maintainer="dingxl@lingjia.tech, http://lingjia.tech"

ENV TZ=Asia/Shanghai
RUN ln -sf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

EXPOSE 3306
