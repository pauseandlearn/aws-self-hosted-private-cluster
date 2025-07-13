
#!/bin/bash
servers=(172.31.13.63 172.31.4.33 172.31.10.205 172.31.14.253 172.31.8.116 172.31.8.164 172.31.13.208)
user="ubuntu"

for ip in "${servers[@]}"; do
  echo "Updating $ip..."
  ssh -i ~/.ssh/accesskey "$user@$ip" "sudo sed -i 's/^PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config.d/60-cloudimg-settings.conf && sudo systemctl restart ssh"
done