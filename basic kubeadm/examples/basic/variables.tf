variable "region" {
  default = "us-east-1"
}

variable "keypair" {
  description = "EC2 keypair name for SSH"
}

variable "ssh_cidr" {
  default = "0.0.0.0/0"
}

variable "instance_type" {
  default = "t3.large"
}

variable "worker_count" {
  default = 1
}

variable "ami" {
  description = "Ubuntu 22.04 AMI ID"
  default     = "ami-0fc5d935ebf8bc3bc"
}