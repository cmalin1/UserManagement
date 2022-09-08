#!/usr/bin/env bash
aws cloudformation deploy --stack-name user-management-vpc --template-file ./vpc.yaml --region us-east-1

aws cloudformation deploy --stack-name user-management-ip --template-file ./ip.yaml --region us-east-1

aws cloudformation deploy --stack-name user-management-security --template-file ./security.yaml --capabilities CAPABILITY_IAM --region us-east-1

aws cloudformation deploy --stack-name user-management-web --template-file ./webserver.yaml --region us-east-1

aws cloudformation deploy --stack-name jenkins-server --template-file ./jenkins.yaml --capabilities CAPABILITY_IAM --region us-east-1

aws cloudformation deploy --stack-name user-management-db --template-file  ./db.yaml --capabilities CAPABILITY_IAM --region us-east-1
