# Azure Key Vault Module

This Terraform module creates an **Azure Key Vault** with configurable properties such as SKU, network access, RBAC, and deployment settings.

## Features

- Creates an Azure Key Vault in a specified Resource Group.
- Supports enabling/disabling public network access.
- Supports RBAC authorization mode.
- Allows configuring deployment and disk encryption settings.
- Purge protection option to meet compliance requirements.
- Applies custom tags to the Key Vault.

---

## Usage

```hcl
module "key_vault" {
  source = "../../modules/azure/key-vault"

  name                = "kv-demo"
  location            = "westeurope"
  resource_group_name = module.rg.name

  key_vault = {
    sku_name                        = "standard"
    enabled_for_deployment          = false
    enabled_for_disk_encryption     = false
    purge_protection_enabled        = true
    enabled_for_template_deployment = false
    public_network_access_enabled   = true
    enable_rbac_authorization       = true
  }

  tags = {
    environment = "dev"
    project     = "demo"
  }
}
