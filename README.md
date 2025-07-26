# ☁️ Secure Cloud Deployment on AWS 🔐

A complete project to deploy and secure a web application on AWS EC2 using best practices in cloud security and infrastructure monitoring.

---

## 🚀 Project Overview

This project demonstrates a secure deployment of a Linux web server on AWS EC2. It includes:

- Secure configuration of the instance (UFW, Fail2Ban)
- IAM role setup with least privilege
- Integration with S3 for object storage
- CloudTrail logging for full auditability
- Hands-on AWS CLI usage
- Linux hardening for real-world cloud security

---

## 🛠️ Tools & Technologies

- **AWS Services:** EC2, IAM, S3, CloudTrail, KMS
- **Security Tools:** UFW, Fail2Ban
- **Languages:** Bash, AWS CLI
- **OS:** Ubuntu 22.04 (EC2 instance)

---

## 🔧 What I Implemented

- ✅ Launched EC2 instance with SSH key pair
- ✅ Installed Apache web server
- ✅ Configured UFW firewall and Fail2Ban
- ✅ Created and attached IAM role for S3 access
- ✅ Interacted with S3 using AWS CLI (upload, download, delete)
- ✅ Enabled CloudTrail and verified logs
- ✅ Captured and documented CloudTrail events

---

## 🧪 Sample AWS CLI Commands

```bash
# Upload a file to S3
aws s3 cp test.txt s3://secure-suhas-bucket/

# Download file from S3
aws s3 cp s3://secure-suhas-bucket/test.txt downloaded.txt

# Check IAM Role attached to instance
curl http://169.254.169.254/latest/meta-data/iam/info



