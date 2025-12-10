output "controlplane_eip" {
  value = module.kubeadm.controlplane_eip
}

output "controlplane_private_ip" {
  value = module.kubeadm.controlplane_private_ip
}

output "worker_public_ips" {
  value = module.kubeadm.worker_public_ips
}

output "worker_private_ips" {
  value = module.kubeadm.worker_private_ips
}