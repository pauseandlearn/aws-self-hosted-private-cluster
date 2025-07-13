#!/bin/bash

IPS=(
  172.31.4.33
  172.31.13.63
  172.31.10.205
  172.31.14.253
  172.31.8.116
  172.31.8.164
  172.31.13.208
)

for IP in "${IPS[@]}"; do
  echo "Updating password on $IP"
  ssh -o StrictHostKeyChecking=no -i ~/.ssh/accesskey ubuntu@$IP "echo 'ubuntu:ubuntu' | sudo chpasswd"
done
