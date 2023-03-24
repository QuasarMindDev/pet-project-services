provider "azurerm" {
  features {}
}

data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "pet_app_kv" {
  name                = var.key_vault_name
  location            = var.location
  resource_group_name = var.resource_group_name
  enabled_for_disk_encryption = true
  sku_name            = "standard"
  tenant_id           = data.azurerm_client_config.current.tenant_id

  tags = {
    environment = "petapp"
  }
  depends_on = [var.resource_group]
}

output "key_vault" {
  value = azurerm_key_vault.pet_app_kv
}