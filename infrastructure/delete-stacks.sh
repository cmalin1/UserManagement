#!/usr/bin/env bash
aws cloudformation delete-stack --stack-name user-management-db-dev

aws cloudformation delete-stack --stack-name user-management-web-dev

aws cloudformation delete-stack --stack-name user-management-db-staging

aws cloudformation delete-stack --stack-name user-management-web-staging



#comment this section out when in the middle of class
#aws cloudformation delete-stack --stack-name user-management-security 
#aws cloudformation wait stack-delete-complete --stack-name user-management-security
#aws cloudformation delete-stack --stack-name jenkins-server 
#aws cloudformation wait stack-delete-complete --stack-name jenkins-server
#aws cloudformation delete-stack --stack-name user-management-ip
#aws cloudformation wait stack-delete-complete --stack-name user-management-ip
#aws cloudformation delete-stack --stack-name user-management-vpc
#aws cloudformation wait stack-delete-complete --stack-name user-management-vpc