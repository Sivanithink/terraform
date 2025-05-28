# terraform
# Terraform ALB + EC2 + EBS Setup

This repository contains Terraform configuration files to provision a scalable infrastructure on AWS using:

- **VPC**
- **Security Groups**
- **EC2 Instances**
- **EBS Volumes**
- **Application Load Balancer (ALB)**
- **Auto Scaling Groups**

## 🌐 Architecture Overview

This setup includes:

- A custom **VPC** with public/private subnets.
- An **Application Load Balancer** to distribute traffic.
- **EC2 Instances** behind the ALB using an **Auto Scaling Group**.
- Attached **EBS volumes** for persistent storage.

## 📁 Files Included

| File | Description |
|------|-------------|
| `main.tf` | Root Terraform configuration |
| `vpc.tf` | VPC, subnets, route tables |
| `security_groups.tf` | Security group rules |
| `ec2.tf` | EC2 instance and launch template |
| `ebs.tf` | EBS volume attachments |
| `alb.tf` | Application Load Balancer and listeners |
| `autoscale.tf` | Auto Scaling Group setup |
| `variables.tf` | Input variables |
| `terraform.tfvars` | Variable values (user-specific) |
| `outputs.tf` | Output values like ALB DNS |
| `.gitignore` | Git ignore file (ignores `.terraform/`, `*.exe`, etc.) |

## 🚀 Getting Started

### Initialize Terraform

```bash
terraform init
