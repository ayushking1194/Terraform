provider "aws" {
  region = var.region
}

module "vpc" {
  source = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
}

module "security" {
  source = "./modules/security"
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source            = "./modules/ec2"
  subnet_id         = module.vpc.private_subnet_ids[0]
  security_group_id = module.security.sg_id
  key_name          = var.key_name
  instance_type     = var.instance_type
  ami               = var.ami
}