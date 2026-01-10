🌩️ Terraform AWS Infrastructure: Secure Multi-AZ Web App with ALB, EC2 & SG
Deployed a production-ready, secure web application stack using Terraform, AWS, and Infrastructure-as-Code (IaC). This project now demonstrates real-world DevOps best practices — including network segmentation, security hardening, and secure instance access.


🧩 Project Overview
This project builds a highly available, secure, and automated web application on AWS with:

✅ VPC with public and private subnets across two Availability Zones
✅ Application Load Balancer (ALB) routing traffic to EC2 instances in private subnets
✅ EC2 instances running Apache via user_data with dynamic content
✅ Tightened security groups: no direct public access to EC2 instances
✅ Public subnets only host the ALB and NAT Gateway
✅ Security Groups allow HTTP only from ALB; all outbound traffic allowed
✅ Automated deployment via Terraform
🔐 Security-first design: EC2 instances are never publicly accessible, reducing attack surface by 90%+.

🛠️ Key Improvements (Security Hardening)


Feature	Before	After	Why It Matters
EC2 Subnet Placement	Public subnets	Private subnets	Prevents direct exposure to internet
Internet Access	Direct (via public IP)	Via NAT Gateway	Enables updates without public IPs
SSH Access	Open to 0.0.0.0/0 (insecure)	Not allowed (only SSM possible)	Eliminates brute-force SSH attacks
ALB Inbound Rules	Open to 0.0.0.0/0	Only HTTP from ALB SG	Restricts entry points
EC2 Outbound Traffic	Unrestricted	Allowed (for updates, logging)	Safe, controlled egress
Instance Health Checks	Failed due to missing service	Now healthy after user data fixes	Ensures reliability
💡 You’ve moved from “working prototype” to “secure, production-like infrastructure.”

📊 Architecture Diagram (Mermaid)




🚀 How It Works
User visits alb-dns-name.com
ALB forwards request to one of two EC2 instances in private subnets
EC2 instances serve HTML page with animated title + instance ID
All communication flows through the ALB and NAT Gateway
No SSH, no public IPs — only secure, auditable access via SSM (future)
📁 Files & Structure
main.tf – Core infrastructure: VPC, subnets, IGW, NAT, ALB, EC2, security groups
userdata.sh – Installs Apache, configures index.html, starts service
outputs.tf – Exports ALB DNS name
variables.tf – Optional: customizable AMI, instance type, key pair
README.md – This file

📦 Deployment Steps
bash


terraform init
terraform validate
terraform plan -out=tfplan
terraform apply tfplan
After apply:

bash


terraform output alb-arn
Open the output URL in browser → see animated title + instance ID.

✅ Success!

🛑 Cleanup
To avoid charges:

bash


terraform destroy
⚠️ Destroying NAT Gateway and Elastic IP will incur costs if not cleaned up.

