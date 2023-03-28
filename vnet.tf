resource "azurerm_virtual_network" "demovnet" {
  name                = "demovnet"
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name
  address_space       = [var.vnet1_cidr]
  tags = {
    "env" = var.env
  }
}


resource "azurerm_virtual_network" "demovnet2" {
  name                = "demovnet2"
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name
  address_space       = [var.vnet2_cidr]
  tags = {
    "env" = var.env
  }
}


resource "azurerm_subnet" "demosubnet1" {
  name                 = "demosubnet1"
  resource_group_name  = azurerm_resource_group.rg1.name
  virtual_network_name = azurerm_virtual_network.demovnet.name
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_subnet" "demosubnet2" {
  name                 = "demosubnet2"
  resource_group_name  = azurerm_resource_group.rg1.name
  virtual_network_name = azurerm_virtual_network.demovnet.name
  address_prefixes     = ["10.0.2.0/24"]
}


















