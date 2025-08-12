# Azure Resource Group Module

this module create a **Resource Group** on Azure with Terraform.

## Exemple d'utilisation

```hcl
module "rg" {
  source   = "../../modules/azure/resource-group"
  name     = "rg-demo"
  location = "westeurope"
  tags = {
    environment = "dev"
    project     = "demo"
  }
}
