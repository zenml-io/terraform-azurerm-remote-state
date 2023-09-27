variable "location" {
  description = "The location to which to deploy resources"
  default     = "northeurope"
  type        = string
}

variable "container_name" {
  description = "The name of the Azure storage container to deploy"
  type        = string
}

variable "tags" {
  description = "A map of tags to apply to all resources associated with the remote storage"
  type        = map(string)
  default     = {}
}

# variable "force_destroy" {
#   description = "A boolean that indicates all objects should be deleted from the bucket so that the bucket can be destroyed without error"
#   default     = false
#   type        = bool
# }

# variable "enable_versioning" {
#   description = "A boolean that indicates all objects should be versioned"
#   default     = true
#   type        = bool
# }



# variable "block_public_access" {
#   description = "Whether or not to block public access to the bucket"
#   default     = true
#   type        = bool
# }
