variable "cidr_block" {
  type        = string
  description = "CIDR block for the VPC"
}

variable "project_name" {
  type        = string
  description = "Project name to be used as a prefix for all resources"
}

# variable "region" {
#   type        = string
#   description = "AWS region to create resources"
# }

# variable "tags" {
#   type        = map(any)
#   description = "A mao of tags to add to all resources"
# }