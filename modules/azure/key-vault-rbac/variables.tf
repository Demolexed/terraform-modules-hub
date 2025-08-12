variable "resource_group_name" {
  type = object({
    name     = string
    location = string
  })
}

variable "key_vault_name" {
  description = "Key Vault's name"
  type        = string
}

variable "tags" {
  description = "Key Vault's tags"
  type        = map(string)
  default     = {}
}

variable "tenant_id" {
  description = "Tenant ID"
  type        = string
}

variable "sku_name" {
  default = "standard"
}

variable "enabled_for_deployment" {
  default = true
}

variable "enabled_for_disk_encryption" {
  default = true
}

variable "purge_protection_enabled" {
  default = true
}

variable "enabled_for_template_deployment" {
  default = true
}

variable "public_network_access_enabled" {
  default = false
}

variable "enable_rbac_authorization" {
  default = true
}