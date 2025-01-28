output "cluster_instance_type" {
  value = aws_eks_node_group.eks_mng.instance_types
}