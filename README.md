# Secure AWS VPC with Terraform

This repository contains Terraform code to deploy a **secure, multi-tier AWS VPC** suitable for lab, PoC, or baseline production environments.

## 🧱 What This Deploys

- 1x VPC (`/16`)
- 2x public subnets (across AZs)
- 2x private subnets (across AZs)
- Internet Gateway for public subnets
- NAT Gateway for private subnets
- Separate public and private route tables
- Example security group for a web/application tier
- Optional VPC Flow Logs to CloudWatch Logs

## 🛡️ Security Features

- Private subnets have **no direct Internet access** (egress via NAT)
- Public subnets for Internet-facing resources only
- Security group allows **HTTPS from the Internet** (no SSH by default)
- VPC Flow Logs enabled (optional) for monitoring and threat hunting

## ✅ Prerequisites

- Terraform >= 1.5
- AWS account
- AWS credentials configured locally (via environment variables or AWS CLI)

## 🚀 Usage

```bash
git clone https://github.com/<your-username>/aws-secure-vpc-terraform.git
cd aws-secure-vpc-terraform

cp terraform.tfvars.example terraform.tfvars
# edit terraform.tfvars as needed

terraform init
terraform plan
terraform apply
