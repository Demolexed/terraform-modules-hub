variable "resource_group_name" {
  type        = string
  description = "The name for the backend resource group that will home the backend storage account."
}

variable "name" {
  description = "Storage account's name"
  type        = string
}

variable "location" {
  description = "Storage account's Azure region"
  type        = string
  default     = "westeurope"
}

variable "tags" {
  description = "Storage account's tags"
  type        = map(string)
  default     = {}
}

variable "storage_account" {
  type = object({
    name                     = string
    access_tier              = string
    account_replication_type = string
    account_kind             = string
    account_tier             = string
  })
  description = "Storage Account properties"
}