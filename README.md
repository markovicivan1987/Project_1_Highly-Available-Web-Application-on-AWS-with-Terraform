AWS Highly Available Web Application with Terraform
Overview
This project provisions a highly available and scalable AWS infrastructure using Terraform. It includes a custom VPC, public and private subnets, an Application Load Balancer, Auto Scaling Group for EC2 web servers, security groups, route tables, and all necessary networking components.

Architecture
Custom VPC: Isolated network environment.
2 Public Subnets: For the load balancer, across two Availability Zones.
2 Private Subnets: For EC2 web servers managed by an Auto Scaling Group, across two Availability Zones.
Internet Gateway: For public subnet internet access.
NAT Gateway: For private subnet outbound internet access.
Route Tables: Separate for public and private subnets.
Application Load Balancer (ALB): In public subnets, routes traffic to EC2 instances.
Auto Scaling Group (ASG): Manages EC2 instances in private subnets.
Security Groups: For ALB and EC2 instances, following least privilege.

Architecture Diagram

<img width="1536" height="1024" alt="image" src="https://github.com/user-attachments/assets/4593f954-07a0-49fb-b196-f99064a08d61" />


Features
Highly available and scalable web application infrastructure
Secure networking with public/private subnets and security groups
Automated provisioning with Terraform
Easy to customize and extend
Prerequisites
Terraform v1.0.0 or later
AWS CLI v2.0 or later
AWS account with appropriate permissions
Usage
Clone the repository:

sh

git clone <your-repository-url>
cd <your-repository-directory>
Initialize Terraform:

sh

terraform init
Review the plan:

sh

terraform plan
Apply the configuration:

sh

terraform apply
Confirm with yes when prompted.

Destroy the infrastructure:

sh

terraform destroy
Confirm with yes when prompted.

Configuration
Customize deployment via terraform.tfvars or environment variables. Example variables:

Variable	Description	Type	Default
aws_region	AWS region	string	"us-east-1"
vpc_cidr_block	VPC CIDR block	string	"10.0.0.0/16"
public_subnet_cidrs	Public subnet CIDRs	list(string)	["10.0.1.0/24", ...]
private_subnet_cidrs	Private subnet CIDRs	list(string)	["10.0.10.0/24", ...]
instance_type	EC2 instance type	string	"t3.micro"
ami_id	AMI ID for EC2 instances	string	"" (latest Amazon Linux 2)
asg_min_size	Min instances in ASG	number	2
asg_max_size	Max instances in ASG	number	4
asg_desired_capacity	Desired instances in ASG	number	2
File Structure


.
├── main.tf           # Main Terraform configuration
├── variables.tf      # Input variable definitions
├── outputs.tf        # Output variable definitions
├── providers.tf      # Provider configuration
├── data.tf           # Data configuration
└── README.md         # Project documentation

Security
Security groups restrict traffic to only what is necessary.
EC2 instances are in private subnets, not directly accessible from the internet.
Never commit sensitive data.
Contributing
Fork the repository.
Create a new branch (git checkout -b feature/your-feature-name).
Make your changes.
Commit (git commit -am 'Add some feature').
Push (git push origin feature/your-feature-name).
Create a Pull Request.
