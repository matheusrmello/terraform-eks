resource "aws_eks_node_group" "eks_mng" {
  cluster_name    = var.cluster_name
  node_group_name = "${var.project_name}-nodegroup"
  node_role_arn   = aws_iam_role.eks_mng_role.arn
  subnet_ids      = [var.subnet_privat_1a, var.subnet_privat_1b]
  capacity_type   = "SPOT"
  instance_types  = [var.mng_instance_type]

  scaling_config {
    desired_size = 1
    max_size     = 2
    min_size     = 1
  }

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-mng"
    }
  )

  depends_on = [
    aws_iam_role_policy_attachment.eks_mng_role_attachment_worker,
    aws_iam_role_policy_attachment.eks_mng_role_attachment_ecr,
    aws_iam_role_policy_attachment.eks_mng_role_attachment_cni,
  ]
}