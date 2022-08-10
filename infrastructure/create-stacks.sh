#!/usr/bin/env bash
aws cloudformation deploy --stack-name user-management-vpc --template-file ./vpc.yaml

aws cloudformation deploy --stack-name user-management-security --template-file ./security.yaml --capabilities CAPABILITY_IAM 

aws cloudformation deploy --stack-name user-management-web --template-file ./webserver.yaml

aws cloudformation deploy --stack-name jenkins-server --template-file ./jenkins.yaml --capabilities CAPABILITY_IAM 