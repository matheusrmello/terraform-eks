output "eks_vpc_config" {
  value = aws_eks_cluster.eks_cluster.vpc_config
}

output "oidc_tls_certificate" {
  value = data.tls_certificate.eks_oidc_tls_certificate.certificates[*].sha1_fingerprint
}

output "cluster_name" {
  value = aws_eks_cluster.eks_cluster.id
}

output "oidc" {
  value = aws_eks_cluster.eks_cluster.identity[0].oidc[0].issuer
}

output "certificate_authority" {
  value = aws_eks_cluster.eks_cluster.certificate_authority[0].data
}

output "endpoint" {
  value = aws_eks_cluster.eks_cluster.endpoint
}

output "cluster_sg" {
  value = aws_eks_cluster.eks_cluster.vpc_config[0].cluster_security_group_id
}