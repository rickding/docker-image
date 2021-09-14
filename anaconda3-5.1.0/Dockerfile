FROM continuumio/anaconda3:5.1.0

LABEL maintainer="白云信科，研发中心"

ENV TZ=Asia/Shanghai
RUN ln -sf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN pip install -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com

python -m pip install --upgrade pip

EXPOSE 8883
