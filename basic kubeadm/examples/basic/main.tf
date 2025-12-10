terraform {
  required_version = ">= 1.5"
}

provider "aws" {
  region = var.region
}

module "cluster" {
  source = "../../"   # <--- Uses the root module

  region         = var.region
  keypair        = var.keypair
  ssh_cidr       = var.ssh_cidr
  instance_type  = var.instance_type
  ami            = var.ami
  worker_count   = var.worker_count
}

output "controlplane_eip" {
  value = module.cluster.controlplane_eip
}

output "worker_public_ips" {
  value = module.cluster.worker_public_ips
}