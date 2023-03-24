provider "azurerm" {
  features {}
}

module "pet_app_rg" {
  source = "./Azure_Resource_Group"
  resource_group_name = var.resource_group_name
  location = var.location
  tags = var.tags
}

module "pet_app_kv" {
  source = "./Azure_Key_Vault"
  resource_group = "${module.pet_app_rg.resource_group}"
  resource_group_name = var.resource_group_name
  location = var.location
  key_vault_name = var.key_vault_name
}

module "pet_app_apim" {
  source = "./Azure_Api_Management"
  resource_group = "${module.pet_app_rg.resource_group}"
  key_vault = "${module.pet_app_kv.key_vault}"
  api_management_name = var.api_management_name
  publisher_name = var.publisher_name
  publisher_email = var.publisher_email
  sku_name = var.sku_name
  location = var.location
  resource_group_name = var.resource_group_name
  tags = var.tags
}