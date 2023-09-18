# Provider Block

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "Donotdelete"
    storage_account_name = "destoragedev77"
    container_name       = "backend"
    key                  = "templates.tfstate"
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  skip_provider_registration = true # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  features {}
  subscription_id = "f82dc02a-7ace-4b9d-b4b2-7a0980da5304"
  tenant_id       = "38ede796-48e9-4087-897a-43740a45f805"
}