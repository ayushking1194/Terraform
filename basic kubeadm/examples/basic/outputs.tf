output "controlplane_eip" {
  value = module.cluster.controlplane_eip
}

output "worker_public_ips" {
  value = module.cluster.worker_public_ips
}

output "worker_private_ips" {
  value = module.cluster.worker_private_ips
}

output "controlplane_private_ip" {
  value = module.cluster.controlplane_private_ip
}