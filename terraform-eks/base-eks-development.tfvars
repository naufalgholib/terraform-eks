autoscaling_average_cpu = 60
eks_managed_node_groups = {
  "my-app-eks-group1" = {
    ami_type     = "AL2_x86_64"
    min_size     = 1
    max_size     = 6
    desired_size = 1
    instance_types = [
      "t3.medium",
      "t3.large",
      "t3.xlarge",
      "t3.2xlarge"
    ]
    capacity_type = "SPOT"
    network_interfaces = [{
      delete_on_termination       = true
      associate_public_ip_address = true
    }]
  }
  "my-app-eks-group2" = {
    ami_type     = "AL2_x86_64"
    min_size     = 3
    max_size     = 6
    desired_size = 3
    instance_types = [
      "t3.medium",
      "t3.large",
      "t3.xlarge",
      "t3.2xlarge"
    ]
    capacity_type = "ON_DEMAND"
    network_interfaces = [{
      delete_on_termination       = true
      associate_public_ip_address = true
    }]
  }
}
