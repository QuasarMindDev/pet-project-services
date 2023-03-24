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
