terraform {
  required_version = ">= 1.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region
}

module "vpc" {
  source = "./modules/vpc"
  region = var.region
}

module "security" {
  source  = "./modules/security"
  vpc_id  = module.vpc.vpc_id
  ssh_cidr = var.ssh_cidr
}

module "kubeadm" {
  source = "./modules/kubeadm"

  ami               = var.ami
  instance_type     = var.instance_type
  keypair           = var.keypair
  subnet_id         = module.vpc.public_subnet_id
  security_group_id = module.security.sg_id
  worker_count      = var.worker_count
}