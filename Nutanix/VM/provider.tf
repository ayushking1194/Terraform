terraform {
  required_providers {
    nutanix = {
      source  = "nutanix/nutanix"
      version = "1.9.2"
    }
  }
}

provider "nutanix" {
  username = "<USERNAME>"
  password = "<PASSWORD>"
  endpoint = "10.X.X.X"
  insecure = true
  port     = 9440
}

