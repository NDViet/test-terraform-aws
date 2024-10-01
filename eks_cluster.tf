# aws_eks_cluster.test-automation1:
resource "aws_eks_cluster" "test-automation1" {
  bootstrap_self_managed_addons = false
  enabled_cluster_log_types = [
    "api",
    "audit",
    "authenticator",
    "controllerManager",
    "scheduler",
  ]
  name     = "test-automation1"
  role_arn = "arn:aws:iam::202410010000:role/EKSClusterRole"
  tags     = {}
  tags_all = {}
  version  = "1.29"

  access_config {
    authentication_mode                         = "API"
    bootstrap_cluster_creator_admin_permissions = true
  }

  kubernetes_network_config {
    ip_family         = "ipv4"
    service_ipv4_cidr = "172.20.0.0/16"
    service_ipv6_cidr = null
  }

  upgrade_policy {
    support_type = "EXTENDED"
  }

  vpc_config {
    endpoint_private_access = true
    endpoint_public_access  = true
    public_access_cidrs = [
      "0.0.0.0/0",
    ]
    security_group_ids = [
      "sg-03ad9d550602b826e",
      "sg-08f9feb7cbaa5021d",
    ]
    subnet_ids = [
      "subnet-00b0c102e6ed49c6c",
      "subnet-0385724146fd0afb9",
    ]
  }
}

# aws_eks_cluster.test-automation2:
resource "aws_eks_cluster" "test-automation2" {
  bootstrap_self_managed_addons = false
  enabled_cluster_log_types = [
    "api",
    "audit",
    "authenticator",
    "controllerManager",
    "scheduler",
  ]
  name     = "test-automation2"
  role_arn = "arn:aws:iam::202410010000:role/EKSClusterRole"
  tags     = {}
  tags_all = {}
  version  = "1.29"

  access_config {
    authentication_mode                         = "API_AND_CONFIG_MAP"
    bootstrap_cluster_creator_admin_permissions = true
  }

  kubernetes_network_config {
    ip_family         = "ipv4"
    service_ipv4_cidr = "172.20.0.0/16"
    service_ipv6_cidr = null
  }

  upgrade_policy {
    support_type = "EXTENDED"
  }

  vpc_config {
    endpoint_private_access = true
    endpoint_public_access  = true
    public_access_cidrs = [
      "0.0.0.0/0",
    ]
    security_group_ids = [
      "sg-03ad9d550602b826e",
      "sg-08f9feb7cbaa5021d",
    ]
    subnet_ids = [
      "subnet-00b0c102e6ed49c6c",
      "subnet-0385724146fd0afb9",
    ]
  }
}
