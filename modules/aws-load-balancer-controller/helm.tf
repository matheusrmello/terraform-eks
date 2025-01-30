resource "helm_release" "eks_helm_controller" {
  name       = "aws-load-balancer-controller"
  repository = "https://aws.github.io/eks-charts"
  chart      = "aws-load-balancer-controller"
  version    = "1.11.0"
  namespace  = "kube-system"

  set = [
    {
      name  = "serviceAccount.create"
      value = "false"
    },

    {
      name  = "serviceAccount.name"
      value = "aws-load-balancer-controller"
    },

    {
      name  = "vpcId"
      value = var.vpc_id
    },

    {
      name  = "clusterName"
      value = var.cluster_name
    },

    {
      name  = "region"
      value = data.aws_region.current.name
    }
  ]
}

# resource "helm_release" "jenkins" {
#   name = "jenkins"
#   repository = "oci://registry-1.docker.io/bitnamicharts/jenkins"
#   chart      = "bitnami/jenkins"
#   namespace = "jenkins"
#   create_namespace = true
#   timeout = 600

#   repository_username = "matheusmello09"
#   repository_password = "Math_rm09!"

#   values = [
#     file("charts/jenkins/values.yaml")
#   ]
# }