# Pet App Services

Pet App Services is a Terraform project that deploys Azure resources to support the Pet App service. This documentation is intended for technical users who are familiar with Terraform and Azure.

## Prerequisites

Before you can deploy the Pet App Services resources, you must have the following:

- Azure account
- Azure CLI
- Terraform

## Deployment

To deploy the Pet App Services resources:

1. Clone this repository to your local machine.
2. Navigate to the cloned repository directory.
3. Run `az login` to authenticate with Azure.
4. Run `terraform -chdir=./Terraform init` to initialize the Terraform modules.
5. Run `terraform -chdir=./Terraform plan -var-file="terraform.tfvars" -out=tfplan` to see the execution plan.
6. Run `terraform -chdir=./Terraform apply -auto-approve tfplan` to deploy the resources to Azure.
7. Run `terraform -chdir=./Terraform destroy -auto-approve` to destroy the resources im Azure.

## Resources

The Pet App Services deployment includes the following Azure resources:

- Resource group: The container for all resources created by this deployment.
- Azure API Management: The service that exposes the Pet App APIs.
- Azure Key Vault: The service that stores secrets and keys used by the Pet App service.

## Configuration

The following variables can be configured in the `variables.tf` file:

### Resource Group

- `resource_group_name`: The name of the resource group where the resources will be deployed. Default value is `pet-app-rg`.
- `location`: The location of the resource group. Default value is `eastus`.
- `tags`: The tags that will be assigned to the resource group.

### Key Vault

- `key_vault_name`: The name of the Azure Key Vault. Default value is `pet-app-kv`.

### Api Management

- `publisher_name`: The name of the publisher for the API Management instance. Default value is `Pet App Service`.
- `publisher_email`: The email of the publisher for the API Management instance. Default value is `PetsProject2022@gmail.com`.
- `sku_name`: The name of the SKU for the API Management instance. Default value is `consumption`.

## License

This project is licensed under the [Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International](LICENSE.md) license.
