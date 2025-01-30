# output "oidc" {
#   value = module.eks_cluster.oidc
# }

output "ca" {
  value = module.eks_cluster.certificate_authority
}

output "endpoint" {
  value = module.eks_cluster.endpoint
}

output "project_name" {
  value = module.eks_cluster.cluster_name
}