variable "resource_group_name" {
  description = "Name of the Azure Resource Group that will contain all resources."
  type        = string
  default     = "rg-fastapi-starter"
}

variable "location" {
  description = "Azure region where resources will be created (e.g. eastus, westeurope)."
  type        = string
  default     = "westus"
}

variable "environment" {
  description = "Deployment environment label — used in resource tags (e.g. dev, staging, prod)."
  type        = string
  default     = "dev"
}

variable "app_name" {
  description = "Short name for the application — used as a prefix in resource names."
  type        = string
  default     = "fastapi-starter"
}

variable "storage_account_tier" {
  description = "Performance tier for the Storage Account. Standard is sufficient for most use cases."
  type        = string
  default     = "Standard"
}

variable "storage_replication_type" {
  description = "Replication strategy for the Storage Account (LRS = locally redundant, cheapest option)."
  type        = string
  default     = "LRS"
}
