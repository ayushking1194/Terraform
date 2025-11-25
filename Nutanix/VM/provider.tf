terraform {
  required_providers {
    nutanix = {
      source  = "nutanix/nutanix"
      version = "1.9.2"
    }
  }
}

provider "nutanix" {
  username = "ayush"
  password = "nx2Tech123!"
  endpoint = "10.38.96.7"
  insecure = true
  port     = 9440
}

