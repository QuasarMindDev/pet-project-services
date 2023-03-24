provider "azurerm" {
  features {}
}

resource "azurerm_api_management_api" "pet_app_api" {
  name                = var.app_name_api
  resource_group_name = var.resource_group_name
  api_management_name = var.apim_name
  revision            = "1"
  display_name        = var.app_name_display_name
  description         = var.app_description
  path                = var.app_path
  protocols           = ["https"]
  service_url =  "http://${var.app_name}.${var.location}.azurecontainer.io"
  subscription_required = false
  import {
    content_format = "openapi+json"
    content_value  = file("./swagger.json")
  }
  depends_on = [var.container_group]
}

output "app_api" {
  value = azurerm_api_management_api.pet_app_api
}
