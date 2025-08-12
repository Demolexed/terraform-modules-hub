output "azurerm_virtual_network_name" {
  value       = azurerm_virtual_network.vnet.name
  description = "The name of the virtual network"
}

output "azurerm_virtual_network_id" {
  value       = azurerm_virtual_network.vnet.id
  description = "The ID of the virtual network"
}

output "azurerm_virtual_network_subnet_id" {
  value       = { for k, v in azurerm_subnet.subnets : k => v.id }
  description = "The IDs of the subnets in the virtual network"
}

output "azurerm_virtual_network_subnet_name" {
  value       = { for k, v in azurerm_subnet.subnets : k => v.name }
  description = "The names of the subnets in the virtual network"
}
