variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "key_name" {
  description = "SSH key pair name for EC2 instances"
  default     = "key_MY_project1"
}

variable "my_ip" {
  description = "Your public IP for bastion SSH access"
  default     = "79.140.146.126/32"
}