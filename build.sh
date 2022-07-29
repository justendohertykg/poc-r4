#!/bin/sh
set -e

#echo "add the aws cli"
#apk add --no-cache aws-cli

#echo "about to login to AWS ECR"
#aws ecr get-login-password --region $REGION | docker login --username AWS --password-stdin $AWS_ACCOUNT_NUMBER.dkr.ecr.eu-west-1.amazonaws.com

#docker build -t kg-docker-nodejs-14 .
docker build -t $CONTAINER_TAG_NAME .

#echo "push to ECR"
#docker push $CONTAINER_REPOSITORY_URI:$CONTAINER_TAG_NAME
