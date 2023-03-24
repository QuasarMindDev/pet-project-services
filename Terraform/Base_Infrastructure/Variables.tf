variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "pet-app-rg"
}

variable "location" {
  description = "Location of the resource group"
  type        = string
  default     = "eastus"
}

variable "tags" {
  description = "Tags for the resource group"
  type        = map(string)
  default     = {
    environment = "dev"
    owner       = "pet-app-team"
  }
}

variable "key_vault_name" {
  type        = string
  description = "Name of the Key Vault to be created"
  default     = "pet-app-kv"
}

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
