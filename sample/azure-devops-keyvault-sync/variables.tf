variable "azdo_variable_group_name" {
  description = "Azure DevOps variable group name"
  type        = string
}

variable "azdo_library_variable_names" {
  description = "List of Azure DevOps variables to copy into key vault"
  type        = list(string)
}

variable "azdo_project_name" {
  description = "Azure DevOps project"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group containing the Key Vault"
  type        = string
}

variable "keyvault_name" {
  description = "Azure Key Vault name"
  type        = string
}
