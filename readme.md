### 服务信息

| 开发运行环境     | URL:Port                                |  备注              |
| ------------     | --------------------------------------  | ----------------- |
| MySQL数据库      | http://localhost:3306, root/root
| MySQL Admin      | http://localhost:3006        
| Redis缓存        | http://localhost:6379, 123456
| ActiveMQ消息队列 | http://localhost:8161, admin/admin

#### 一次构建多个镜像

docker build -t swr.cn-south-1.myhuaweicloud.com/byxx-rdc/activemq:latest ./activemq
docker push swr.cn-south-1.myhuaweicloud.com/byxx-rdc/activemq:latest

docker build -t swr.cn-south-1.myhuaweicloud.com/byxx-rdc/adminer:latest ./adminer
docker push swr.cn-south-1.myhuaweicloud.com/byxx-rdc/adminer:latest

docker build -t swr.cn-south-1.myhuaweicloud.com/byxx-rdc/mysql:5.7 ./mysql5.7
docker push swr.cn-south-1.myhuaweicloud.com/byxx-rdc/mysql:5.7

docker build -t swr.cn-south-1.myhuaweicloud.com/byxx-rdc/mysql:5.7.35 ./mysql5.7.35
docker push swr.cn-south-1.myhuaweicloud.com/byxx-rdc/mysql:5.7.35

docker build -t swr.cn-south-1.myhuaweicloud.com/byxx-rdc/mysql:8.0.19 ./mysql8.0.19
docker push swr.cn-south-1.myhuaweicloud.com/byxx-rdc/mysql:8.0.19

docker build -t swr.cn-south-1.myhuaweicloud.com/byxx-rdc/nginx:latest ./nginx
docker push swr.cn-south-1.myhuaweicloud.com/byxx-rdc/nginx:latest

docker build -t swr.cn-south-1.myhuaweicloud.com/byxx-rdc/openjdk:8 ./openjdk8
docker push swr.cn-south-1.myhuaweicloud.com/byxx-rdc/openjdk:8

docker build -t swr.cn-south-1.myhuaweicloud.com/byxx-rdc/redis:4.0 ./redis4.0
docker push swr.cn-south-1.myhuaweicloud.com/byxx-rdc/redis:4.0

docker build -t swr.cn-south-1.myhuaweicloud.com/byxx-rdc/redis:5.0 ./redis5.0
docker push swr.cn-south-1.myhuaweicloud.com/byxx-rdc/redis:5.0

docker build -t swr.cn-south-1.myhuaweicloud.com/byxx-rdc/tomcat:latest ./tomcat
docker push swr.cn-south-1.myhuaweicloud.com/byxx-rdc/tomcat:latest

docker build -t swr.cn-south-1.myhuaweicloud.com/byxx-rdc/python:3.6 ./python3.6
docker push swr.cn-south-1.myhuaweicloud.com/byxx-rdc/python:3.6

docker build -t swr.cn-south-1.myhuaweicloud.com/byxx-rdc/anaconda3:latest ./anaconda3
docker push swr.cn-south-1.myhuaweicloud.com/byxx-rdc/anaconda3:latest

docker build -t swr.cn-south-1.myhuaweicloud.com/byxx-rdc/anaconda3:5.0.1 ./anaconda3-5.0.1
docker push swr.cn-south-1.myhuaweicloud.com/byxx-rdc/anaconda3:5.0.1
