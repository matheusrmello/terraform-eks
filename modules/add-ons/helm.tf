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

resource "helm_release" "sealed_secrets" {
  name       = "sealed-secrets-controller"
  repository = "https://bitnami-labs.github.io/sealed-secrets"
  chart      = "sealed-secrets"
  version    = "2.17.1"
  namespace  = "kube-system"

  set = [
    {
      name  = "fullnameOverride"
      value = "sealed-secrets-controller"
    }
  ]
}