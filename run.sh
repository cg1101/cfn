#!/bin/bash

aws cloudformation create-stack --stack-name My-Stack-`date +%Y%m%sT%H%M%SZ` \
  --region ap-northeast-1 \
  --template-body file://./exercise1.json

aws cloudformation create-stack --stack-name My-Stack-`date +%Y%m%sT%H%M%SZ` \
  --region ap-northeast-1 \
  --template-body file://./exercise2.json

aws cloudformation create-stack --stack-name My-Stack-`date +%Y%m%sT%H%M%SZ` \
  --region ap-northeast-1 \
  --template-body file://./exercise3.json \
  --parameters ParameterKey=EC2KeyName,ParameterValue=tokyo_key_pair_1

aws cloudformation create-stack --stack-name My-Stack-`date +%Y%m%sT%H%M%SZ` \
  --region ap-northeast-1 \
  --template-body file://./exercise4.json \
  --parameters ParameterKey=VPCIPRange,ParameterValue=10.0.0.0/16 \
    ParameterKey=Region,ParameterValue=ap-northeast-1

aws cloudformation create-stack --stack-name My-Stack-`date +%Y%m%sT%H%M%SZ` \
  --region ap-northeast-1 \
  --template-body file://./exercise5.json \
  --parameters ParameterKey=EC2KeyName,ParameterValue=tokyo_key_pair_1

