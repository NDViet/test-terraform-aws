# aws_eks_node_group.test-automation1:
resource "aws_eks_node_group" "test-automation1" {

  ami_type      = "AL2_x86_64"
  capacity_type = "ON_DEMAND"
  cluster_name  = "test-automation1"
  disk_size     = 30
  instance_types = [
    "t3.2xlarge",
  ]
  labels                 = {}
  node_group_name        = "test-automation1"
  node_group_name_prefix = null
  node_role_arn          = "arn:aws:iam::202410010000:role/WorkerNodeRole"
  release_version        = "1.29.8-20240924"
  subnet_ids = [
    "subnet-00b0c102e6ed49c6c",
    "subnet-0385724146fd0afb9",
  ]
  tags     = {}
  tags_all = {}
  version  = "1.29"

  scaling_config {
    desired_size = 2
    max_size     = 2
    min_size     = 0
  }

  update_config {
    max_unavailable = 1
  }
}

# aws_eks_node_group.test-automation2:
resource "aws_eks_node_group" "test-automation2" {
  depends_on = [
    aws_instance.nat_bridge,
    aws_route_table.cluster-route-tables,
    aws_main_route_table_association.update,
    aws_eks_cluster.test-automation2
  ]
  ami_type      = "AL2_x86_64"
  capacity_type = "ON_DEMAND"
  cluster_name  = "test-automation2"
  disk_size     = 30
  instance_types = [
    "t3.2xlarge",
  ]
  labels                 = {}
  node_group_name        = "test-automation2"
  node_group_name_prefix = null
  node_role_arn          = "arn:aws:iam::202410010000:role/WorkerNodeRole"
  release_version        = "1.29.8-20240924"
  subnet_ids = [
    "subnet-00b0c102e6ed49c6c",
    "subnet-0385724146fd0afb9",
  ]
  tags     = {}
  tags_all = {}
  version  = "1.29"

  scaling_config {
    desired_size = 2
    max_size     = 2
    min_size     = 0
  }

  update_config {
    max_unavailable = 1
  }
}
