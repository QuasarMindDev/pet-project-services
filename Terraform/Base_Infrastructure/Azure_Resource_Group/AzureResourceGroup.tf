provider "azurerm" {
  features {
      resource_group {
        prevent_deletion_if_contains_resources = false
      }
  }
}

resource "azurerm_resource_group" "pet_app_rg" {
  name     = var.resource_group_name
  location = var.location
}

output "resource_group" {
  value = azurerm_resource_group.pet_app_rg
}