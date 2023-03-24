variable "resource_group" {}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group where the Key Vault will be deployed"
  default     = "pet-app-rg"
}

variable "location" {
  type        = string
  description = "Location of the Key Vault"
  default     = "eastus"
}

variable "key_vault_name" {
  type        = string
  description = "Name of the Key Vault to be created"
  default     = "pet-app-kv"
}