output "name" {
  value       = azurerm_storage_account.storage_account.name
  description = "The name of the storage account"
}

output "id" {
  value       = azurerm_storage_account.storage_account.id
  description = "The ID of the storage account"
}

output "primary_blob_endpoint" {
  value       = azurerm_storage_account.storage_account.primary_blob_endpoint
  description = "The primary blob endpoint of the storage account"
}
