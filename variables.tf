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

# RESOURCE GROUP

variable "resource_group_name_suffix" {
  description = "A suffix to append to the resource group name"
  type        = string
  default     = "zenml"
  validation {
    condition     = length(var.resource_group_name_suffix) <= 11
    error_message = "The resource group name suffix must be less than or equal to 11 characters."
  }
}

# STORAGE ACCOUNT

variable "storage_account_name_suffix" {
  description = "A suffix to append to the storage account name"
  type        = string
  default     = "zenml"
}

variable "storage_account_replication_type" {
  description = "The storage account replication type"
  type        = string
  default     = "LRS"
}

variable "storage_account_kind" {
  description = "The storage account kind"
  type        = string
  default     = "StorageV2"
}

variable "storage_account_tier" {
  description = "The storage account tier"
  type        = string
  default     = "Standard"
}

variable "enable_versioning" {
  description = "A boolean that indicates all objects should be versioned"
  default     = true
  type        = bool
}
