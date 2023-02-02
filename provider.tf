provider "azurerm" {
  features {}

  
  }

terraform {
    backend  "azurerm"  {
        storage_account_name = "pipeline12"
        container_name       = "container4"
        key                  = "dev.tfstate"
        }
}
