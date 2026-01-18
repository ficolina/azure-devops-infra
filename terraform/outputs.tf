output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "vnet_name" {
  value = azurerm_virtual_network.vnet.name
}

output "vm_public_ip" {
  value = azurerm_public_ip.pip.ip_address
}

output "ssh_command" {
  value = "ssh ${var.vm_admin_username}@${azurerm_public_ip.pip.ip_address}"
}
