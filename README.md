🚀 **Overview**

This project demonstrates a production-style containerized application deployed on AWS ECS (Fargate) using Terraform and GitHub Actions.
It follows real-world cloud engineering best practices:
Infrastructure as Code (IaC)
Secure CI/CD with GitHub OIDC
Scalable, highly available architecture
No hardcoded secrets
Proper logging and observability
This project is designed to reflect how containerized workloads are deployed in modern AWS environments.

🏗️ **Architecture Overview**

High-Level Flow
Developer pushes code to GitHub
GitHub Actions authenticates to AWS using OIDC (no access keys)
Docker image is built and pushed to Amazon ECR
ECS Service pulls the image from ECR
Application runs on ECS Fargate inside private subnets
Traffic flows through an Application Load Balancer
Logs are sent to CloudWatch Logs

☁️ **AWS Architecture Diagram**

🧱 **Infrastructure Components**

**Networking**
VPC
Public Subnets (ALB)
Private Subnets (ECS Tasks)
Internet Gateway
NAT Gateway
Route Tables
**Compute**
Amazon ECS (Fargate)
ECS Cluster
ECS Service
ECS Task Definition
**Container Registry**
Amazon ECR
**Load Balancing**
Application Load Balancer
Target Group
Listener (HTTP)
**Security**
IAM Roles (least privilege)
GitHub OIDC Provider
Security Groups
No static credentials
**Observability**
Amazon CloudWatch Log Group
ECS Task Logs

🔁 **CI/CD Pipeline (GitHub Actions)**

Trigger: push to main
Authenticate using OIDC
Build Docker image
Push image to Amazon ECR
ECS Service pulls the latest image automatically
✔️ No AWS access keys stored in GitHub
✔️ Fully production-grade authentication model

🛠️ **Tech Stack**

AWS: ECS, ECR, ALB, IAM, VPC, CloudWatch
IaC: Terraform
CI/CD: GitHub Actions
Containers: Docker
Runtime: AWS Fargate

📁 **Project Structure**
```
project-4-container-app/
├── .github/workflows/
│ └── deploy.yml
├── modules/
│ ├── vpc/
│ ├── ecs/
│ ├── alb/
│ └── iam/
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
└── README.md
```

✅ **Key Learnings**

Secure AWS authentication using GitHub OIDC
ECS task execution roles and logging
Debugging real ECS failures (logs, networking, IAM)
Terraform module design
Production-ready cloud architecture
