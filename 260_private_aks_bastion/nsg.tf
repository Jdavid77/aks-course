resource "azurerm_network_security_group" "this" {
  name     = "subnet-sg"
  location = var.location

  resource_group_name = data.azurerm_resource_group.rg.name

}

resource "azurerm_network_security_rule" "inbound_ssh" {
  access                      = "Allow"
  direction                   = "Inbound"
  name                        = "ssh-access"
  network_security_group_name = azurerm_network_security_group.this.name
  priority                    = "1000"
  protocol                    = "Tcp"
  resource_group_name         = data.azurerm_resource_group.rg.name
  description                 = "Inbound SSH Access"
  destination_address_prefix  = "*"
  destination_port_range      = "22"
  source_address_prefix       = "*"
  source_port_range           = "*"
}

resource "azurerm_subnet_network_security_group_association" "this" {
  subnet_id                 = azurerm_subnet.snet-vm.id
  network_security_group_id = azurerm_network_security_group.this.id
}