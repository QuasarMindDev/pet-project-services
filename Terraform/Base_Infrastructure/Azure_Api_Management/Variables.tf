variable "resource_group" {}
variable "key_vault" {}

variable "api_management_name" {
  description = "Name of the API Management instance"
  type        = string
  default     = "pet-app-apim"
}

variable "publisher_name" {
  description = "Name of the publisher for the API Management instance"
  type        = string
  default     = "Pet App Service"
}

variable "publisher_email" {
  description = "Email of the publisher for the API Management instance"
  type        = string
  default     = "pet-app-team@example.com"
}

variable "sku_name" {
  description = "Name of the SKU for the API Management instance"
  type        = string
  default     = "consumption"
}

variable "location" {
  description = "Location of the API Management instance"
  type        = string
  default     = "eastus"
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "pet-app-rg"
}

variable "tags" {
  description = "Tags for the API Management instance"
  type        = map(string)
  default     = {
    environment = "dev"
    owner       = "pet-app-team"
  }
}