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

module "resource-group" {
  source              = "../../modules/azure/ressource-group"
  location            = local.location
  resource_group_name = local.resource_group_name
}

###########
# OUTPUTS #
###########

output "resource_group_name" {
  value = module.resource-group.resource_group_name
}