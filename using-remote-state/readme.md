🌐 Terraform Remote State Collaboration: Networking & Security Module
A hands-on demonstration of Terraform remote state sharing between two independent infrastructure modules — networking and security — using AWS S3 as a backend.

This project shows how teams can collaborate on infrastructure by securely sharing outputs (like an Elastic IP address) across different Terraform configurations, enabling modular, scalable, and team-based DevOps workflows.

🔍 Project Overview
✅ Networking module: Creates an Elastic IP (EIP) in AWS and stores state in an S3 bucket.
✅ Security module: Reads the EIP from remote state and creates a security group rule allowing inbound traffic only from that EIP (/32).
✅ Remote state: Uses AWS S3 
✅ Team collaboration pattern: One team manages networking; another manages security — both use shared data safely.
💡 This mimics real-world scenarios where frontend/backend teams, or DevOps/Security teams work independently but depend on each other’s outputs.

📁 Folder Structure


using-remote-state/
├── networking/
│   └── main.tf
├── security/
│   └── main.tf
└── README.md
Each folder is self-contained and can be applied independently after the first one.

⚙️ Prerequisites
Before running this project, ensure you have:



Requirement	Description
AWS Account	With IAM permissions to create: S3 buckets, EIPs, security groups
AWS CLI	Configured with credentials (aws configure)
Terraform v1.5+	Installed locally
S3 Bucket	Named bucket_name 
🔒 Best Practice: Use a dedicated S3 bucket with versioning, encryption, and bucket policies.

🛠️ How It Works
Apply networking first
Terraform initializes the S3 backend.
Creates an Elastic IP (EIP).
Outputs the public IP and saves it to networking.tfstate in S3.
Then apply security
Uses data "terraform_remote_state" to read the eip_address output from the S3-stored state.
Applies a security group rule allowing inbound HTTP (port 80) traffic only from that EIP.
✅ No hardcoded IPs! The dependency is managed via Terraform’s remote state mechanism.


