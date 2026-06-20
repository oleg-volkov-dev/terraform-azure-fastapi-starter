output "resource_group_name" {
  description = "Name of the provisioned Resource Group."
  value       = azurerm_resource_group.main.name
}

output "storage_account_name" {
  description = "Name of the provisioned Storage Account."
  value       = azurerm_storage_account.main.name
}

output "storage_container_name" {
  description = "Name of the blob container inside the Storage Account."
  value       = azurerm_storage_container.main.name
}

output "storage_primary_blob_endpoint" {
  description = "Blob service endpoint URL for the Storage Account."
  value       = azurerm_storage_account.main.primary_blob_endpoint
}
