output "controlplane_eip" {
  value = module.controlplane.eip
}

output "controlplane_private_ip" {
  value = module.controlplane.private_ips[0]
}

output "worker_public_ips" {
  value = module.workers.public_ips
}

output "worker_private_ips" {
  value = module.workers.private_ips
}