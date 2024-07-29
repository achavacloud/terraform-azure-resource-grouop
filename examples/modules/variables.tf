variable "location" {
  description = "The Azure region where the resource group will be created."
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the resource group."
  type        = map(string)
  default     = {}
}

variable "lock_level" {
  description = "The level of lock to apply to the resource group. Possible values are 'ReadOnly' and 'CanNotDelete'. Leave empty for no lock."
  type        = string
  default     = ""
}

variable "org_prefix" {
  description = "The organization prefix associated with the resource group."
  type        = string
}

variable "env" {
  description = "The environment for the resource group (e.g., dev, prod)."
  type        = string
}

variable "project" {
  description = "The project associated with the resource group."
  type        = string
}

variable "resource_type" {
  description = "The type of resource for which the name is generated."
  type        = string
}

variable "suffix" {
  description = "An optional suffix for the resource name."
  type        = string
  default     = ""
}
