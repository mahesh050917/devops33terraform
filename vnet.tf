resource "azurerm_virtual_network" "demovnet" {
  name                = "demovnet"
  location            = azurerm_resource_group.rg1.name
  resource_group_name = azurerm_resource_group.rg1.location
  address_space       = [var.vnet1_cidr]
  tags = {
     "env" = var.env
 }
}



















