variable "region" {
  description = "The region to deploy resources to"
  default     = "northeurope"
  type        = string
}

variable "container_name" {
  description = "The name of the Azure storage container to deploy"
  type        = string
}
