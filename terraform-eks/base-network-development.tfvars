cluster_name            = "terraform-eks-cluster"
iac_environment_tag     = "development"
name_prefix             = "terraform-eks"
main_network_block      = "20.0.0.0/16"
cluster_azs             = ["ap-southeast-3a", "ap-southeast-3b", "ap-southeast-3c"]
subnet_prefix_extension = 4
zone_offset             = 8
