variable "location" {
  description = "The location to which to deploy resources"
  default     = "northeurope"
  type        = string
}

variable "container_name" {
  description = "The name of the Azure storage container to deploy"
  type        = string
}
