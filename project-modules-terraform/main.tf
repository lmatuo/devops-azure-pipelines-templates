terraform {
  required_version = ">=1.7.5"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.3.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "terraform-state"       ###
    storage_account_name = "statefilesdevsa"       ###
    container_name       = "projectdevtfstate"     ###
    key                  = "dev.terraform.tfstate" ###
  }
}

provider "azurerm" {
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

module "storage" {
  source = "./modules/storage"

  resource_group_name     = local.resource_group_name
  resource_group_location = local.resource_group_location
  container_registry_name = "project${local.environment_prefix}cr"

  depends_on = [module.azurerg]
}