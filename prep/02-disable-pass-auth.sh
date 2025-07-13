
#!/bin/bash
servers=(
172.31.5.195
172.31.12.97 
172.31.15.215
172.31.13.124
172.31.12.172
172.31.10.94
172.31.9.175)
user="ubuntu"

for ip in "${servers[@]}"; do
  echo "Updating $ip..."
  ssh -i ~/.ssh/accesskey "$user@$ip" "sudo sed -i 's/^PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config.d/60-cloudimg-settings.conf && sudo systemctl restart ssh"
done