# Terraform Ansible AWS Example 🌐

## Quick start guide for provisioning with Ansible inside Terraform 👍

This project demonstrates how to use Terraform to provision AWS infrastructure and Ansible to configure the provisioned instances.

## Project Structure 📁

- `ansible/`: Playbooks, inventories, and configuration
- `terraform/`: Infrastructure files and modules

## Getting Started 🔥

Before using this project:

1. Install `boto` for dynamic inventory with AWS EC2:
   ```
   $ pip install boto
   $ chmod +x ansible/dynamic_inventory.sh
   ```
2. Set up your AWS credentials (e.g., using environment variables or AWS CLI configuration)

## Usage 💻

1. Set variables in `terraform/terraform.tfvars` (copy from `terraform.tfvars.example`):
   - `pub_key_path`
   - `private_key_path`
   - `key_name`
2. Initialize Terraform:
   ```
   $ cd terraform && terraform init
   ```
3. Plan the infrastructure:
   ```
   $ terraform plan
   ```
4. Apply the Terraform configuration:
   ```
   $ terraform apply
   ```
5. Run Ansible playbooks:
   ```
   $ cd ../ansible && ansible-playbook -i dynamic_inventory.sh site.yml
   ```
6. Destroy the infrastructure:
   ```
   $ terraform destroy
   ```

## Terraform Structure 📝

### Main Components

- `main.tf`: Defines the main infrastructure (AWS provider, modules)
- `variables.tf`: Declares input variables
- `outputs.tf`: Specifies output values
- `data.tf`: Defines data sources (e.g., AMI lookup)
- `backend.tf.example`: Example backend configuration for remote state

### Modules 🧩

- `base`: Defines base security group
- `key_pair`: Manages SSH key pair
- `web`: Provisions web servers
- `db`: Provisions database servers
- `vpc`: Creates and configures the VPC
- `alb`: Sets up Application Load Balancer
- `asg`: Configures Auto Scaling Group
- `rds`: Provisions RDS database
- `s3`: Creates and configures S3 bucket
- `cloudfront`: Sets up CloudFront distribution
- `route53`: Manages Route53 DNS records
- `iam`: Configures IAM roles and policies

Each module has its own `main.tf`, `variables.tf`, and `outputs.tf` files.

## Ansible Structure 🎭

- `ansible.cfg`: Ansible configuration file
- `site.yml`: Main playbook that includes other playbooks
- `dynamic_inventory.sh`: Script that retrieves tfstate from S3 to generate inventory
- `playbooks/`:
  - `web.yml`: Playbook for web servers
  - `db.yml`: Playbook for database servers

## Infrastructure Overview 🏗️

This project sets up the following AWS resources:
- VPC and security groups
- EC2 instances for web and database servers
- SSH key pair for instance access

## Ansible Configuration 🔧

Ansible is used to configure the provisioned instances:
- Web servers: Installs and configures Apache
- Database servers: Installs and configures MySQL

## Important Notes 📌

- Ensure your AWS credentials are properly configured
- Review and adjust security group rules as needed
- Customise Ansible playbooks to fit your specific requirements

## License 📝

MIT licensed by [tooniez](https://github.com/tooniez)
