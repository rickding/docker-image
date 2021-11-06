#!/bin/bash

for IMAGE in mysql:5.7.35 adminer redis:5.0 activemq nginx
do
    echo "pull image: " $IMAGE
	docker pull $IMAGE

    echo "tag image: " $IMAGE
	docker tag $IMAGE 10.10.27.102:5000/$IMAGE

    echo "push image: " $IMAGE
	docker push 10.10.27.102:5000/$IMAGE
done
