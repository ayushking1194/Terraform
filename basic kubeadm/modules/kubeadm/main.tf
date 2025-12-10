locals {
  control_user_data = templatefile(
    "${path.module}/templates/cloud-init-controlplane.yaml",
    {}
  )

  worker_user_data = templatefile(
    "${path.module}/templates/cloud-init-worker.yaml",
    {
      controlplane_private_ip = module.controlplane.private_ips[0]
    }
  )
}

# Control plane node
module "controlplane" {
  source = "../ec2"

  ami                = var.ami
  instance_type      = var.instance_type
  subnet_id          = var.subnet_id
  security_group_ids = [var.security_group_id]
  keypair            = var.keypair
  instance_count     = 1
  assign_eip         = true
  name               = "kube-controlplane"

  user_data = local.control_user_data
}

# Worker nodes
module "workers" {
  source = "../ec2"

  ami                = var.ami
  instance_type      = var.instance_type
  subnet_id          = var.subnet_id
  security_group_ids = [var.security_group_id]
  keypair            = var.keypair
  instance_count     = var.worker_count
  assign_eip         = false
  name               = "kube-worker"

  user_data = local.worker_user_data
}