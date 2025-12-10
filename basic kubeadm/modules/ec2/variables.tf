variable "ami" {}
variable "instance_type" {}
variable "subnet_id" {}
variable "security_group_ids" { type = list(string) }
variable "keypair" {}

variable "instance_count" {
  default = 1
}

variable "user_data" {
  type    = string
  default = ""
}

variable "assign_eip" {
  type    = bool
  default = false
}

variable "name" {
  type = string
}