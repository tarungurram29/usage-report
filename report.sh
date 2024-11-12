#!/bin/bash

# Author: Tarungurram
date
#This shellscript is written for to see the usage of your cloud services such as ec2, lambda, iam, and s3.


echo "displaying ec2 instances"
aws ec2 describe-instances

echo "displaying ec2 instances id(s)"
aws ec2 describe-instances | jq (.Reservations[].Instances[].InstancesId)

echo "displaying lambda"
aws lambda list-functions

echo "displaying iam users"
aws iam list-users
