#!/bin/bash

# docker image remove
docker rmi -f proxy-email-alarm-app:latest

#docker image build
docker build -t proxy-email-alarm-app .


#image tagging
docker tag proxy-email-alarm-app:latest 453404434749.dkr.ecr.ap-northeast-2.amazonaws.com/proxy-email-alarm-app:latest

#image push
docker push 453404434749.dkr.ecr.ap-northeast-2.amazonaws.com/proxy-email-alarm-app:latest


453404434749.dkr.ecr.ap-northeast-2.amazonaws.com/proxy-email-alarm-app:latest