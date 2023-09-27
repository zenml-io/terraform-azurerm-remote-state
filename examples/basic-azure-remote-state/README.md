# Basic Azure Remote State Backend

This is an example of setting up a Azure remote state container with Terraform. It
will provision a single Azure blob storage container.

To run the example:

- Set up or login to an Azure account with the relevant permissions enabled
  (specifically, the ability to provision storage accounts and containers).
- Update `example-config.tfvars` to match your needs. You can specify a Azure
  container name that does not already exist as well as the region/location on which you'd
  like it to be provisioned in.
  (Alternatively, pass in overrides via the command line and the `-var` option).
- Run with `terraform init -var-file="example-config.tfvars"` and `terraform
  apply -var-file="example-config.tfvars"`.

After you run `terraform apply`, you should see the following output:

```
remote_state_container_http_url = "az://<YOUR_CONTAINER_URL_GOES_HERE>"
```

To destroy the container and the associated resource group and storage account, run `terraform destroy -var-file="example-config.tfvars"`.
