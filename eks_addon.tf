resource "aws_eks_addon" "test-automation1-vcp-cni" {
  depends_on = [
    aws_eks_cluster.test-automation1
  ]
  cluster_name = aws_eks_cluster.test-automation1.name
  addon_name   = "vpc-cni"
}

resource "aws_eks_addon" "test-automation1-coredns" {
  depends_on = [
    aws_eks_cluster.test-automation1
  ]
  cluster_name = aws_eks_cluster.test-automation1.name
  addon_name   = "coredns"
}

resource "aws_eks_addon" "test-automation1-kube-proxy" {
  depends_on = [
    aws_eks_cluster.test-automation1
  ]
  cluster_name = aws_eks_cluster.test-automation1.name
  addon_name   = "kube-proxy"
}

resource "aws_eks_addon" "test-automation2-vcp-cni" {
  depends_on = [
    aws_eks_cluster.test-automation2
  ]
  cluster_name = aws_eks_cluster.test-automation2.name
  addon_name   = "vpc-cni"
}

resource "aws_eks_addon" "test-automation2-coredns" {
  depends_on = [
    aws_eks_cluster.test-automation2
  ]
  cluster_name = aws_eks_cluster.test-automation2.name
  addon_name   = "coredns"
}

resource "aws_eks_addon" "test-automation2-kube-proxy" {
  depends_on = [
    aws_eks_cluster.test-automation2
  ]
  cluster_name = aws_eks_cluster.test-automation2.name
  addon_name   = "kube-proxy"
}
