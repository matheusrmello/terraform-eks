variable "project_name" {
  type        = string
  description = "Project name to be used as a prefix for all resources"
}

variable "tags" {
  type        = map(any)
  description = "Tags to be applied to all resources"
}