output "rg_name" {
  value = data.azurerm_resource_group.rg.name
}

output "vm_id" {
  value = azurerm_linux_virtual_machine.vm-linux.id
}