#############
# PROVIDERS #
#############

provider "azurerm" {
  features {}
}


#############
# VARIABLES #
#############

variable "resource_group_name" {
  type    = string
  default = "AZGRGTEST001"
}

locals {
  resource_group_name = var.resource_group_name
  location            = "France Central"
}

#############
# RESOURCES #
#############

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

###########
# OUTPUTS #
###########

output "storage_account_name" {
  value = module.storage_account.name
}