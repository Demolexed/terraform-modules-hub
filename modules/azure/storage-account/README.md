# Azure Storage Account Module

this module create a **Storage account** on Azure with Terraform.

## Exemple d'utilisation

```hcl
module "storage_account" {
  source              = "../../modules/azure/storage-account"
  location            = local.location
  resource_group_name = local.resource_group_name
  storage_account     = {
    name                     = "examplestoracc"
    access_tier              = "Hot"
    account_replication_type = "LRS"
    account_kind             = "StorageV2"
    account_tier             = "Standard"
  }
}
