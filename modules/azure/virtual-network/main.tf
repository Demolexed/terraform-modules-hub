
##################################################
# RESOURCES                                      #
##################################################

resource "azurerm_virtual_network" "vnet" {
  name                = var.name
  location            = var.resource_group_name.location
  resource_group_name = var.resource_group_name.name
  address_space       = var.virtual_network.address_space
  dns_servers         = var.virtual_network.dns_servers

  subnet = [
    for subnet in var.virtual_network.subnet : {
      name                 = subnet.name
      address_prefixes     = subnet.address_prefixes
    }
  ]

  tags = var.tags
}