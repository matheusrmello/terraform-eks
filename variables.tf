variable "cidr_block" {
  type        = string
  description = "CIDR block for the VPC"
}

variable "project_name" {
  type        = string
  description = "Project name to be used as a prefix for all resources"
}