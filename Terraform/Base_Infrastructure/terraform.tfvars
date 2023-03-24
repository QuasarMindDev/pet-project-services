//Resource Group
resource_group_name = "pet-app-rg"
location           = "eastus"
tags = {
  environment = "dev"
  owner       = "pet-app-team"
}

//KeyVault
key_vault_name      = "pet-app-kv"

//Api Management
publisher_name = "Pet App Service"
publisher_email = "PetsProject2022@gmail.com"
sku_name = "consumption"