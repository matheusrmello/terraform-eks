variable "project_name" {
  type        = string
  description = "Project name to be used as a prefix for all resources"
}

variable "tags" {
  type        = map(any)
  description = "Tags to be applied to all resources"
}

variable "vpc" {
  type        = string
  description = "VPC for SG"
}

variable "public_subnet" {
  type        = string
  description = "Subnet for bastion host"
}

variable "cluster_sg" {
  type        = string
  description = "EKS cluster sg"
}

variable "private_subnet" {
  type        = string
  description = "Subnet for MongoDB"
}