# Azure Remote State Container module

Terraform module which creates a remote state container that can be used as backend
for Terraform Azure provider.

These features are supported:

- location-specific container
- custom container naming
- specify versioning policy
- apply custom container tags
- block public access to container

## Usage

```hcl
module "azurerm-remote-state" {
  source = "zenml-io/terraform-azurerm-remote-state"
  # We recommend pinning every module to a specific version
  # version = "x.x.x"

  location      = var.location
  container_name = var.container_name

  tags = {
      env = "dev"
      managed-by = "terraform"
  }
}
```

Use this with an Azure provider and this will spin up a container you can use as a
remote state Terraform backend. (It also spins up a resource group and a storage
account that live to encapsulate the storage container.)

## Help

Got a question about usage or extending the module? [File a GitHub issue](https://github.com/zenml-io/terraform-azurerm-remote-state/issues/new) or [join
our Slack Community](https://zenml.io/slack-invite/).

[![maintained-by-zenml](https://user-images.githubusercontent.com/3348134/173032050-ad923313-f2ce-4583-b27a-afcaa8b355e2.png)](https://zenml.io/)

## Contributing

If you are interested in being a contributor and want to get involved in
developing this project, we would love to hear from you! [File a GitHub issue](https://github.com/zenml-io/terraform-azurerm-remote-state/issues/new) or [join
our Slack Community](https://zenml.io/slack-invite/) and we'll see how we can
work together.

In general, PRs are welcome. We follow the typical "fork-and-pull" Git workflow.

 1. **Fork** the repo on GitHub
 2. **Clone** the project to your own machine
 3. **Commit** changes to your own branch
 4. **Push** your work back up to your fork
 5. Submit a **Pull Request** so that we can review your changes

**NOTE:** Be sure to merge the latest changes from "upstream" before making a pull request!
