#!/bin/bash

sudo yum install -y ruby
wget https://aws-codedeploy-us-east-1.s3.amazonaws.com/latest/install
chmod +x install
./install auto
