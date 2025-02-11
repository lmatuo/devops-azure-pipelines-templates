## standard info
variable "resource_group_name" {
  description = "The name of the resource group in the format."
  type        = string
  validation {
    condition     = length(var.resource_group_name) > 0
    error_message = "The resource group name cannot be empty."
  }
}

variable "resource_group_location" {
  description = "The geographical location where the resource group will be created."
  type        = string
  validation {
    condition     = length(var.resource_group_location) > 0
    error_message = "The resource group location cannot be empty."
  }
}

## storage info
variable "storage_account_name" {
  description = "The name of the storage account name."
  type        = string
  validation {
    condition     = length(var.storage_account_name) > 0
    error_message = "The storage account name name cannot be empty."
  }
}

variable "storage_account_tier" {
  description = "The account tier of the storage account."
  type        = string
  default     = "Standard"
}

variable "storage_account_replication_type" {
  description = "The account replication type of the storage account."
  type        = string
  default     = "LRS"
}

## storage account containers
variable "container_dev_name" {
  description = "The name of the container from storage account."
  type        = string
  default     = "devtfstate"
}

variable "container_access_type" {
  description = "The container access type"
  type        = string
  default     = "private"
}