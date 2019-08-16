#!/usr/bin/env bash
ssh -i ~/.ssh/lhy.pem ubuntu@54.180.144.12 cd /home/ubuntu/docker-compose && docker-compose stop
ssh -i ~/.ssh/lhy.pem ubuntu@54.180.144.12 rm -rf /home/ubuntu/docker-compose
scp -i ~/.ssh/lhy.pem -r /Users/lhy/projects/fastcampus/lecture-10th/docker-compose ubuntu@54.180.144.12:/home/ubuntu
ssh -i ~/.ssh/lhy.pem ubuntu@54.180.144.12 cd /home/ubuntu/docker-compose && docker-compose up
