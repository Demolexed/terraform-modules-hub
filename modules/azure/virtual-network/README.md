# Azure Virtual Network (VNet) Module

This Terraform module creates an **Azure Virtual Network (VNet)** and its associated subnets.

## Features

- Creates a VNet in a specified Resource Group.
- Supports multiple subnets using a simple variable map.
- Applies custom tags to all resources.
- Outputs VNet and Subnet details for reuse in other modules.

---

## Usage

```hcl
module "vnet" {
  source = "../../modules/azure/virtual-network"

  name                = "vnet-demo"
  location            = "westeurope"
  resource_group_name = module.rg.name

  address_space = ["10.0.0.0/16"]

  subnets = {
    frontend = ["10.0.1.0/24"]
    backend  = ["10.0.2.0/24"]
  }

  tags = {
    environment = "dev"
    project     = "demo"
  }
}
