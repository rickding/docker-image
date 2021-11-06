FROM registry

LABEL maintainer="白云信科，研发中心"

EXPOSE 5000

# docker pull registry
# docker run -d -p 5000:5000 --name=byxk --restart=always --privileged=true  -v /data/docker/registry:/var/lib/registry registry
# http://10.10.27.102:5000/v2/
# http://10.10.27.102:5000/v2/_catalog

# vi /etc/docker/daemon.json
# {"registry-mirrors": [ "https://pee6w651.mirror.aliyuncs.com"],"insecure-registries": ["10.10.27.102:5000"]}
# systemctl restart docker

# docker pull nginx
# docker tag nginx 10.10.27.102:5000/nginx_byxk
# docker push 10.10.27.102:5000/nginx_byxk

# docker pull 10.10.27.102:5000/nginx_byxk
