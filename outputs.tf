output "resource_group_id" {
  description = "The ID of the Resource Group."
  value       = azurerm_resource_group.rg.id
}

output "resource_group_name" {
  description = "The name of the Resource Group."
  value       = azurerm_resource_group.rg.name
}

output "resource_group_location" {
  description = "The location of the Resource Group."
  value       = azurerm_resource_group.rg.location
}

output "resource_group_lock_state" {
  description = "The state of the management lock on the Resource Group."
  value       = azurerm_management_lock.resource_group_level_lock[0].lock_level
}