terraform {
  backend "azurerm" {
    resource_group_name  = "testrg"
    storage_account_name = "backedstgbatch33"
    container_name       = "tfstatecontiner"
    key                  = "dev.tfstate"

  }
}