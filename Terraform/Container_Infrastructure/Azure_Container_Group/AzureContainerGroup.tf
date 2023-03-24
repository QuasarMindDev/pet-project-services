provider "azurerm" {
  features {}
}

resource "azurerm_container_group" "pet_app_cg" {
  name                = var.app_name
  location            = var.location
  resource_group_name = var.resource_group_name
  ip_address_type     = "Public"
  dns_name_label      = var.app_name
  os_type             = "Linux"
  restart_policy      = "Always"

  dynamic "container" {
    for_each = var.containers
    content {
      name   = container.value.name
      image  = container.value.image
      cpu    = container.value.cpu
      memory = container.value.memory

      dynamic "ports" {
        for_each = container.value.ports
        content {
          port     = ports.value.port
          protocol = ports.value.protocol
        }
      }
    }
  }

  timeouts {
    create = "15m"
    delete = "5m"
  }
}

output "container_group" {
  value = azurerm_container_group.pet_app_cg
}
