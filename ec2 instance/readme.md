# Terraform AWS Infrastructure

Terraform project to provision a production-ready AWS environment with:

- VPC (public + private subnets)
- Internet & NAT Gateways
- Security group & key pair
- EC2 instance in private subnet
- Modular structure

## Usage

```bash
terraform init
terraform validate
terraform plan -out=tfplan
terraform apply tfplan
terraform destroy