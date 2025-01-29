variable "project_name" {
  type        = string
  description = "Project name to be used as a prefix for all resources"
}

variable "tags" {
  type        = map(any)
  description = "Tags to be applied to all resources"
}

variable "oidc" {
  type        = string
  description = "HTTPS URL of the OIDC provider"
}

variable "cluster_name" {
  type        = string
  description = "Name of the EKS cluster"
}

variable "region" {
  type        = string
  description = "AWS region"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID"
}