provider "azurerm" {
  features {}
}

module "resource_group" {
  source = "../../"

  location       = var.location
  tags           = var.tags
  lock_level     = var.lock_level
  org_prefix    = var.org_prefix
  env            = var.env
  project        = var.project
  resource_type  = var.resource_type
  suffix         = var.suffix
}