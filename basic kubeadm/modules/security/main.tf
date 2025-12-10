resource "aws_security_group" "kube" {
  name   = "kubeadm-sg"
  vpc_id = var.vpc_id

  ingress {
    description = "Cluster internal communication"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.50.0.0/16"]
  }

  ingress {
    description = "SSH Access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.ssh_cidr]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
