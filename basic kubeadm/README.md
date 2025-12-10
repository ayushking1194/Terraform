This demonstrates how to deploy a **basic Kubernetes cluster** on AWS using the Terraform modules.

It includes:

- 1 Control Plane node with **persistent Elastic IP**
- N worker nodes
- Automatic bootstrap via `cloud-init` using `kubeadm`
- Calico CNI installed automatically on the control plane
- Outputs for easy access to cluster nodes

---

## Prerequisites

Before running this example, ensure you have:

1. Terraform >= 1.5
2. AWS credentials configured (`~/.aws/credentials` or environment variables)
3. An existing AWS EC2 Key Pair for SSH access
4. The repository cloned with all modules

## Usage

1. cd examples/basic
2. terraform init
3. terraform plan
4. terraform apply