resource "azurerm_storage_account" "backedstgbatch33" {
  name                     = "backedstgbatch33"
  resource_group_name      = azurerm_resource_group.rg1.name
  location                 = azurerm_resource_group.rg1.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags = {
    "env" = var.env
  }
  depends_on = [
    azurerm_resource_group.rg1
  ]
}

resource "azurerm_storage_container" "tftstate" {
  name                  = "tfstatecontiner"
  storage_account_name  = azurerm_storage_account.backedstgbatch33.name
  container_access_type = "private"
  depends_on = [
    azurerm_storage_account.backedstgbatch33,
    azurerm_resource_group.rg1
  ]
}