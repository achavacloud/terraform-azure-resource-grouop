## Azure Resource Group Creation Module

This Terraform module creates an Azure Resource Group with a generated name using a custom name generator module. It also optionally applies a management lock to the resource group.

```hcl
provider "azurerm" {
  features {}
}

module "resource_group" {
  source = "achavacloud/resource-group/azure"

  location       = var.location
  tags           = var.tags
  lock_level     = var.lock_level
  org_prefix     = var.org_prefix
  env            = var.env
  project        = var.project
  resource_type  = var.resource_type
  suffix         = var.suffix
}
```

Requirements

	1.Terraform >= 0.13
	2.Azure Provider >= 2.0

## Inputs

| Name           | Description                                                                 | Type   | Default | Required |
|----------------|-----------------------------------------------------------------------------|--------|---------|----------|
| `org_prefix`   | A prefix representing the organization or company.                          | string | ""      | no       |
| `project`      | The name of the project or application for which the resource is created.   | string | n/a     | yes      |
| `resource_type`| The type of resource (e.g., rg for Resource Group, vm for Virtual Machine). | string | n/a     | yes      |
| `suffix`       | An optional suffix for additional identification (e.g., region or number).  | string | ""      | no       |
| `env`          | The environment for the resource (e.g., dev, qa, prod).                     | string | ""      | no       |
| `location`     | The Azure region where the resource group will be created.                  | string | n/a     | yes      |
| `tags`         | A map of tags to assign to the resource group.                              | map(string) | {}  | no       |
| `lock_level`   | The level of lock to apply to the resource group ('ReadOnly' or 'CanNotDelete'). Leave empty for no lock. | string | ""  | no       |

## Outputs

| Name                     | Description                                          |
|--------------------------|------------------------------------------------------|
| `resource_group_id`      | The ID of the created Resource Group.                |
| `resource_group_name`    | The name of the created Resource Group.              |
| `resource_group_location`| The location of the created Resource Group.          |
| `resource_group_lock_state` | The state of the management lock on the Resource Group. |