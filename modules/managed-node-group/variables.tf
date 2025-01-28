variable "project_name" {
  type        = string
  description = "Project name to be used as a prefix for all resources"
}

variable "tags" {
  type        = map(any)
  description = "Tags to be applied to all resources"
}

variable "cluster_name" {
  type        = string
  description = "Name of the EKS cluster"
}

variable "subnet_privat_1a" {
  type        = string
  description = "Subnet ID from AZ 1A"
}

variable "subnet_privat_1b" {
  type        = string
  description = "Subnet ID from AZ 1A"
}

variable "mng_instance_type" {
  type        = string
  description = "Instance type for the managed node group"
}