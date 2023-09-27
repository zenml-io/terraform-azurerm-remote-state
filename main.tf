# RESOURCE GROUP
resource "azurerm_resource_group" "remote_state_rg" {
  name     = "remote-state-${var.resource_group_name_suffix}"
  location = var.location

  managed_by = "Terraform"
  tags       = var.tags
}

# STORAGE ACCOUNT

resource "azurerm_storage_account" "remote_state_storage_account" {
  name                = "remotestate${var.resource_group_name_suffix}"
  resource_group_name = azurerm_resource_group.remote_state_rg.name
  location            = var.location

  account_tier             = var.storage_account_tier
  account_kind             = var.storage_account_kind
  account_replication_type = var.storage_account_replication_type

  blob_properties {
    versioning_enabled = var.enable_versioning
  }

  tags = var.tags
}

# STORAGE CONTAINER

resource "azurerm_storage_container" "remote_state_storage_container" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.remote_state_storage_account.name
  container_access_type = "private"
}
