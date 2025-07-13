

USERNAME=ubuntu
for ip in 172.31.5.195 172.31.12.97 172.31.15.215 172.31.13.124 172.31.12.172 172.31.10.94 172.31.9.175; do ssh-copy-id -i ~/.ssh/ansible $USERNAME@$ip; done