terraform {
  required_version = ">=1.7.5"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.3.0"
    }
  }
}

provider "azurerm" {
  client_id       = var.arm_client_id
  client_secret   = var.arm_client_secret
  tenant_id       = var.arm_tenant_id
  subscription_id = var.arm_subscription_id
  features {}
}

#################################################

locals {
  environment_prefix      = "dev"
  resource_group_name     = "project-${local.environment_prefix}"
  resource_group_location = "East US"
  tags = {
    Project       = "Project_Name"
    Owner         = "Larissa_Matuo"
    CreationDate  = "01/01/0001"
    Environment   = "Dev"
  }
}

#################################################

module "azurerg" {
  source = "./modules/azurerg"

  resource_group_name     = local.resource_group_name
  resource_group_location = local.resource_group_location
  tags                    = local.tags
}

module "storage" {
  source = "./modules/storage"

  resource_group_name     = local.resource_group_name
  resource_group_location = local.resource_group_location
  storage_account_name    = "project${local.environment_prefix}sa"

  depends_on = [module.azurerg]
}