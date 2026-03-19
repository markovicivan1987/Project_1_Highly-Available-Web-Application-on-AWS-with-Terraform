variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "key_name" {
  description = "SSH key pair name for EC2 instances"
  default     = "new_key"
}

variable "my_ip" {
  description = "Your public IP for bastion SSH access"
  default     = "31.204.238.181/32"
}