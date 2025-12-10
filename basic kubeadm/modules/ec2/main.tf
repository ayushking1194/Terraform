resource "aws_instance" "this" {
  count                  = var.instance_count
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  key_name               = var.keypair
  vpc_security_group_ids = var.security_group_ids

  user_data = var.user_data

  tags = {
    Name = "${var.name}-${count.index}"
  }
}

resource "aws_eip" "this" {
  count  = var.assign_eip ? 1 : 0
  domain = "vpc"

  instance = aws_instance.this[0].id
}