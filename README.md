# masters-project

[![Deploy](https://github.com/fedorchenko-a/masters-project/actions/workflows/deploy.yml/badge.svg)](https://github.com/fedorchenko-a/masters-project/actions/workflows/deploy.yml)


# Terraform
1. Terraform plan
2. Fill terraform variables file variables.tfvars
3. Apply

# Provisioning Infrastructure on AWS with Terraform

Prerequisites

	1.	Terraform installed on your local machine.
	2.	Ansible installed on your local machine.
	3.	AWS account with necessary permissions.
	4.	Basic understanding of Terraform and Ansible.

# Repository Setup
Clone your repository containing the Terraform and Ansible configurations and navigate into the directory:
```bash
git clone <repository-url>
cd <repository-directory>
```

# Terraform Initialization
Initialize Terraform within the Terraform directory (terraform_aws for AWS or terraform_do for Digitalocean):
```bash
cd terraform_aws
terraform init
```

# Provision infrastructure with Terraform

```bash
terraform plan
terraform apply
```
Note the output IP address of the server from Terraform’s output.

# Update Ansible Inventory
Edit the inventory.ini file to include the new server IP under the correct group:
```bash
[servers]
server ansible_host=server_ip ansible_user=ubuntu
```
# Configure Server with Ansible
```bash
cd ansible
ansible-playbook -i inventory.ini playbook.yaml
```
# Github action configuration
Open Settings - Secrets and Variables - Actions
Create repository secrets:
```bash
SERVER_HOST
SERVER_PASS
SERVER_USER
```