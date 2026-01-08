
# 🌩️ Terraform AWS Infrastructure: Multi-AZ Web App with ALB & EC2

Deployed a production-like web application using **Terraform**, **AWS**, and **Infrastructure-as-Code (IaC)**. This project demonstrates real-world cloud architecture, automation, and security awareness.

> 🔗 Live Demo: [http://your-alb-dns-name.amazonaws.com](https://your-alb-dns-name.amazonaws.com)  
> 📂 GitHub Repo: [https://github.com/yourusername/terraform-aws-web-app](https://github.com/yourusername/terraform-aws-web-app)

---

## 🧩 Project Overview

This project builds a **highly available, multi-AZ web app** on AWS using:
- ✅ VPC with public subnets across two Availability Zones
- ✅ Application Load Balancer (ALB) routing traffic to two EC2 instances
- ✅ EC2 instances running Apache via `user_data`
- ✅ S3 bucket for static assets (future use)
- ✅ Security Groups allowing HTTP/SSH (currently open to 0.0.0.0/0 — *security improvement planned*)

> ⚠️ **Note**: This is a **learning environment**. In production, EC2 instances would be in **private subnets**, SSH access restricted, and the ALB would handle all inbound traffic.

---

## 🛠️ Key Features

| Feature | Implemented |
|-------|------------|
| Terraform IaC | ✅ |
| Multi-AZ VPC & Subnets | ✅ |
| ALB + Target Group | ✅ |
| EC2 Auto-Config via `user_data` | ✅ |
| S3 Bucket Creation | ✅ |
| Public Subnet Deployment | ✅ |
| Security Group Hardening (planned) | 🔜 |
| Private Subnet Migration (planned) | 🔜 |

---

## 🖼️ Architecture Diagram

![Architecture Diagram](assets/diagram.png)  
*Click to view full diagram → [Mermaid Live Editor](https://mermaid.live/edit#pako:eNqNVs1u4zAQ_5WxJ7jUgGcPvH6AeMkK8oYtE9fLrDlJXVdKqOQmKfS__5y0Y8nFhR7w3TPz2zNz04y1q65q9Km2421vq66v54v16848v27dX6609n27tq173d63q9X235u559317d15q627963869717677235363253733756775753375337533753375337533753375337533753375337533753375337533753375337533753375337533753375337533753375337533753375337533753375337533753375337533753375337533753375337533753375337533753375337533753375337533753375337533753375337533753375337533753375337533753375337533753375337533753375337533753375337533753375337533753375337533753375337533753375337533753375337533753375337__*
