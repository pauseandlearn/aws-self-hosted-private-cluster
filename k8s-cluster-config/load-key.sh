USERNAME=ubuntu
for ip in 172.31.4.33 172.31.13.63 172.31.10.205 172.31.14.253 172.31.8.116 172.31.8.164 172.31.13.208; do ssh-copy-id -i ~/.ssh/ansible $USERNAME@$ip; done