resource "aws_key_pair" "key" {
  key_name   = var.key_name
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "aws_instance" "this" {
  ami                         = var.ami
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  key_name                    = aws_key_pair.key.key_name
  vpc_security_group_ids      = [var.security_group_id]

  tags = {
    Name = "ec2_terraform_instance"
  }
}