##################################################
# RESOURCES                                      #
##################################################

resource "azurerm_key_vault" "key_vault" {
  name                = var.key_vault_name
  location            = var.resource_group_name.location
  resource_group_name = var.resource_group_name.name
  sku_name            = var.sku_name
  tenant_id           = var.tenant_id

  enabled_for_deployment          = var.enabled_for_deployment
  enabled_for_disk_encryption     = var.enabled_for_disk_encryption
  purge_protection_enabled        = var.purge_protection_enabled
  enabled_for_template_deployment = var.enabled_for_template_deployment
  public_network_access_enabled   = var.public_network_access_enabled
  enable_rbac_authorization       = var.enable_rbac_authorization

  tags = var.tags
}