chmod 400 secure-key.pem
ssh -i secure-key.pem ubuntu@<EC2_PUBLIC_IP>
sudo apt update && sudo apt upgrade -y
sudo apt install apache2 -y
sudo systemctl start apache2
sudo systemctl enable apache2
sudo adduser suhas
sudo usermod -aG sudo suhas
sudo nano /etc/ssh/sshd_config
sudo systemctl restart ssh
sudo ufw allow OpenSSH
sudo ufw allow 80
sudo ufw allow 443
sudo ufw enable
sudo ufw status
sudo apt install fail2ban -y
sudo systemctl enable fail2ban
sudo nano /etc/fail2ban/jail.local
sudo systemctl restart fail2ban
echo "Test file for secure cloud deployment" > test1.txt
aws s3 cp test1.txt s3://secure-suhas-bucket/
aws s3 ls s3://secure-suhas-bucket/
aws s3 cp s3://secure-suhas-bucket/test1.txt downloaded1.txt
aws s3 rm s3://secure-suhas-bucket/test1.txt
curl http://169.254.169.254/latest/meta-data/iam/info
aws s3api put-bucket-versioning --bucket secure-suhas-bucket \
  --versioning-configuration Status=Enabled
aws s3 cp s3://secure-suhas-bucket/sample.txt s3://secure-suhas-bucket/sample-copy.txt
aws s3 cp s3://suhas-cloudtrail-logs/AWSLogs/<account-id>/CloudTrail/<region>/<YYYY>/<MM>/<DD>/file.json.gz .

