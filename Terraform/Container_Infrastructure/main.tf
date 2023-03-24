provider "azurerm" {
  features {}
}

module "pet_app_cg" {
  source = "./Azure_Container_Group"
  resource_group_name = var.resource_group_name
  location = var.location
  app_name = var.app_name
  containers = var.containers
}

module "pet_app_api" {
  source = "./Azure_Apim_Api"
  container_group = "${module.pet_app_cg.container_group}"
  resource_group_name = var.resource_group_name
  apim_name = var.apim_name
  app_name = var.app_name
  app_name_api = var.app_name_api
  app_name_display_name = var.app_name_display_name
  app_description = var.app_description
  app_path = var.app_path
}