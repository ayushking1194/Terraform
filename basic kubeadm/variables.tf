variable "region" {
  default = "us-east-1"
}

variable "ami" {
  description = "Ubuntu 22.04 AMI for your region"
  default     = "ami-0fc5d935ebf8bc3bc"
}

variable "instance_type" {
  default = "t3.large"
}

variable "keypair" {
  description = "Existing EC2 keypair name"
}

variable "ssh_cidr" {
  description = "Allowed SSH source CIDR"
  default     = "0.0.0.0/0"
}

variable "worker_count" {
  default = 1
}