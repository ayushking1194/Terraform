output "instance_ids" {
  value = aws_instance.this[*].id
}

output "public_ips" {
  value = aws_instance.this[*].public_ip
}

output "private_ips" {
  value = aws_instance.this[*].private_ip
}

output "eip" {
  value = var.assign_eip ? aws_eip.this[0].public_ip : null
}