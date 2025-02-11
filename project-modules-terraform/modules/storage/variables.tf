## standard info
variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
  validation {
    condition     = length(var.resource_group_name) > 0
    error_message = "The resource group name cannot be empty."
  }
}

variable "resource_group_location" {
  description = "The location of the resource group."
  type        = string
  validation {
    condition     = length(var.resource_group_location) > 0
    error_message = "The resource group location cannot be empty."
  }
}

## container registry
variable "container_registry_name" {
  description = "The name of the container registry."
  type        = string
  validation {
    condition     = length(var.container_registry_name) > 0
    error_message = "The container registry name cannot be empty."
  }
}

variable "container_registry_sku" {
  description = "The sku of the container registry."
  type        = string
  default     = "Basic"
}