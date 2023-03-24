variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
  default     = "pet-app-rg"
}

variable "location" {
  type        = string
  description = "The location of the resource group"
  default     = "eastus"
}

variable "app_name" {
  type        = string
  description = "The name of the Pet App"
}

variable "containers" {
  type = list(object({
    name      = string
    image     = string
    cpu       = number
    memory    = number
    ports     = list(object({
      port     = number
      protocol = string
    }))
    env_vars  = list(object({
      name  = string
      value = string
    }))
  }))
  description = "List of containers to deploy to the container group"
}

variable "apim_name" {
  type        = string
  description = "The name of the Apim resource"
  default     = "pet-app-apim"
}

variable "app_name_api" {
  type        = string
  description = "The name of the Pet App Api"
}

variable "app_name_display_name" {
  type        = string
  description = "The name of the Pet App"
}

variable "app_description" {
  type        = string
  description = "The description of the Pet App"
}

variable "app_path" {
  type        = string
  description = "The path of the Pet App"
}