provider "azurerm" {
  region = var.region
}

module "azure-remote-state" {
  source = "../../"

  region         = var.region
  container_name = var.container_name
}

output "remote_state_bucket_url" {
  value = module.azure-remote-state.bucket_url
}
