#!/usr/bin/env bash
aws cloudformation delete-stack --stack-name jenkins-server
aws cloudformation delete-stack --stack-name user-management-web
aws cloudformation wait stack-delete-complete --stack-name user-management-web
aws cloudformation delete-stack --stack-name user-management-security 
aws cloudformation wait stack-delete-complete --stack-name user-management-security
aws cloudformation delete-stack --stack-name user-management-vpc 
aws cloudformation wait stack-delete-complete --stack-name user-management-vpc


