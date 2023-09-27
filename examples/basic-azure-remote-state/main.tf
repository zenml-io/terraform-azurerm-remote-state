provider "azurerm" {
  features {}
}

module "azure-remote-state" {
  source = "../../"

  location       = var.location
  container_name = var.container_name
}

output "remote_state_container_http_url" {
  value = module.azure-remote-state.remote_state_http_url
}
