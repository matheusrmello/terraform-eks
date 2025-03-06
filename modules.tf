data "aws_region" "current" {}

module "eks_network" {
  source       = "./modules/network"
  project_name = var.project_name
  cidr_block   = var.cidr_block
  tags         = local.tags
}

module "eks_cluster" {
  source           = "./modules/cluster"
  project_name     = var.project_name
  tags             = local.tags
  public_subnet_1a = module.eks_network.subnet_pub_1a
  public_subnet_1b = module.eks_network.subnet_pub_1b
}

module "managed_node_group" {
  source            = "./modules/managed-node-group"
  project_name      = var.project_name
  tags              = local.tags
  cluster_name      = module.eks_cluster.cluster_name
  subnet_privat_1a  = module.eks_network.subnet_priv_1a
  subnet_privat_1b  = module.eks_network.subnet_priv_1b
  mng_instance_type = "t3.small"
}

module "eks_addons" {
  source       = "./modules/add-ons"
  project_name = var.project_name
  tags         = local.tags
  oidc         = module.eks_cluster.oidc
  cluster_name = module.eks_cluster.cluster_name
  region       = data.aws_region.current.name
  vpc_id       = module.eks_network.vpc_id
}

module "eks_ec2" {
  source         = "./modules/ec2"
  project_name   = var.project_name
  tags           = local.tags
  vpc            = module.eks_network.vpc_id
  public_subnet  = module.eks_network.subnet_pub_1a
  private_subnet = module.eks_network.subnet_priv_1b
  cluster_sg     = module.eks_cluster.cluster_sg
}