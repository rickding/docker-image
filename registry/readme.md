### Docker私有库

#### 推送

- 增加私有库地址

vi /etc/docker/daemon.json
```
{
    "registry-mirrors":[
        "https://pee6w651.mirror.aliyuncs.com"
    ],
    "insecure-registries":[
        "10.10.27.102:5000"
    ]
}
```
```
{"registry-mirrors":["https://pee6w651.mirror.aliyuncs.com"],"insecure-registries":["10.10.27.102:5000"]}
```

- 重启Docker客户端

systemctl restart docker

- 拉取镜像，打新标签，推送

docker pull nginx
docker tag nginx 10.10.27.102:5000/nginx_byxk
docker push 10.10.27.102:5000/nginx_byxk

- 验证

docker pull 10.10.27.102:5000/nginx_byxk

- 批量处理多个镜像

./docker-push.sh

#### 部署方法

- 使用Docker启动

docker pull registry
docker run -d -p 5000:5000 --name=byxk --restart=always --privileged=true  -v /data/docker/registry:/var/lib/registry registry

- 使用docker-compose启动

docker-compose up -d

- 查看私有库信息

http://10.10.27.102:5000/v2/
http://10.10.27.102:5000/v2/_catalog
