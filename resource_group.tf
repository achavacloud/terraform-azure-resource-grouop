provider "azurerm" {
  features {}
}

module "name_generator" {
  source = "achavacloud/name-generator/hashicorp"

  org_prefix    = var.org_prefix
  env           = var.env
  project       = var.project
  resource_type = var.resource_type
  suffix        = var.suffix
}

resource "azurerm_resource_group" "rg" {
  name     = module.name_generator.resource_name
  location = var.location
  tags     = var.tags
}

resource "azurerm_management_lock" "resource_group_level_lock" {
  count      = var.lock_level == "" ? 0 : 1
  name       = "${module.name_generator.resource_name}-level-lock"
  scope      = azurerm_resource_group.rg.id
  lock_level = var.lock_level
  notes      = "Resource Group '${module.name_generator.resource_name}' is locked with '${var.lock_level}' level."
}