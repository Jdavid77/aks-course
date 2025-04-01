resource "azurerm_virtual_network" "vnet-spoke" {
  name                = "vnet-spoke"
  resource_group_name = data.azurerm_resource_group.rg.name
  location            = data.azurerm_resource_group.rg.location
  address_space       = ["10.1.0.0/16"]
  dns_servers         = null
}

resource "azurerm_subnet" "snet-spoke-aks" {
  name                 = "snet-spoke-aks"
  resource_group_name  = data.azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet-spoke.name
  address_prefixes     = ["10.1.0.0/24"]
}