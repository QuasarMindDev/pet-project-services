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