# Terraform AWS Infrastructure Setup

This repository contains Terraform configurations to set up AWS infrastructure, including a VPC, subnets, security groups, EC2 instances, and an ELB.

Prerequisites

Before you begin, ensure you have the following installed:

	•	Terraform (v0.12+)
	•	AWS CLI
	•	An AWS account with appropriate permissions to create resources

Directory Structure

The repository is organized as follows:
```
.
├── provider.tf
├── vpc.tf
├── security_groups.tf
├── instances.tf
├── elb.tf
├── outputs.tf
└── variables.tf
```

**Setup Instructions**

**Step 1: Configure AWS CLI**
Ensure your AWS CLI is configured with the necessary credentials:
```sh
aws configure
```

**Step 2: Initialize Terraform**
Navigate to the directory containing the Terraform files and initialize Terraform:
```
terraform init
```

**Step 3: Customize Variables**
Edit the variables.tf file to customize your AWS region and availability zones if needed. The defaults are set to *us-west-2* and its respective availability zones.

**Step 4: Apply Terraform Configuration**
Apply the Terraform configuration to create the resources:
```sh
terraform plan
terraform apply
```
You will be prompted to confirm the changes. Type yes to proceed.

**Step 5: Access Outputs**
After the infrastructure is created, Terraform will output the public IP address of the EC2 instance and the DNS name of the ELB. You can use these to access your resources.

# Resource Details

**Provider Configuration (provider.tf)**
Configures the AWS provider with the specified region.

**VPC and Subnet (vpc.tf)**
Defines a VPC, an internet gateway, a public subnet, and a route table with a default route to the internet gateway.

**Security Groups (security_groups.tf)**
Defines security groups to allow inbound traffic on ports 22 (SSH), 80 (HTTP), and 8000 (application-specific traffic), and allow all outbound traffic.

**EC2 Instances (instances.tf)**
Defines an EC2 instance running Ubuntu 20.04, using the latest AMI ID from Canonical, and a key pair for SSH access.

**Elastic Load Balancer (elb.tf)**
Defines an ELB to distribute traffic to the EC2 instance on port 8000.

**Outputs (outputs.tf)**
Outputs the public IP address of the EC2 instance and the DNS name of the ELB.

Notes

	•	Ensure your SSH key is added to the ~/.ssh/id_rsa.pub file or update the path in the instances.tf file.
	•	Modify security group rules as per your security requirements.


