variable "region" {
  default = "ap-south-1"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  type = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  type = list(string)
  default = ["10.0.11.0/24", "10.0.12.0/24"]
}

variable "key_name" {
  default = "terraform-key"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "ami" {
  default = "ami-0c02fb55956c7d316"
}
