provider "azurerm" {
  features {
    api_management {
      purge_soft_delete_on_destroy         = true
    }
  }
}

resource "azurerm_api_management" "pet_app_apim" {
  name                = var.api_management_name
  location            = var.location
  resource_group_name = var.resource_group_name
  publisher_name      = var.publisher_name
  publisher_email     = var.publisher_email
  sku_name            = "Consumption_0"
  depends_on = [var.resource_group]

  timeouts {
    create = "15m"
    delete = "5m"
  }
}

output "api_management" {
  value = azurerm_api_management.pet_app_apim
}
