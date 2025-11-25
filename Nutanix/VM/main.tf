data "nutanix_clusters" "clusters" {}

resource "nutanix_virtual_machine" "vm1" {
  name         = "<VM_NAME>"
  cluster_uuid = data.nutanix_clusters.clusters.entities.0.metadata.uuid

  categories {
    name  = "<CATEGORY_NAME>"
    value = "CATEGORY_VALUE"
  }

  num_vcpus_per_socket = <int>     # 1,2,3
  num_sockets          = <int>     # 1,2,3
  memory_size_mib      = <int_mib> # 1024,2048,4096,8124
}

