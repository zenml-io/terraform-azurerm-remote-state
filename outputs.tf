output "remote_state_container_url" {
  value       = "az://${azurerm_storage_account.remote_state_storage_account.name}/${azurerm_storage_container.remote_state_storage_container.name}"
  description = "URL for the remote state bucket"
}

output "remote_state_http_url" {
  value       = "https://${azurerm_storage_account.remote_state_storage_account.name}.blob.core.windows.net/${azurerm_storage_container.remote_state_storage_container.name}"
  description = "HTTP URL for the remote state bucket"
}

output "resource_group_name" {
  value       = azurerm_resource_group.remote_state_rg.name
  description = "Name of the resource group"
}

output "storage_account_name" {
  value       = azurerm_storage_account.remote_state_storage_account.name
  description = "Name of the storage account"
}

output "storage_container_name" {
  value       = azurerm_storage_container.remote_state_storage_container.name
  description = "Name of the storage container"
}
