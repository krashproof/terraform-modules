locals {
  azdo_variables = {
    for library_var in data.azuredevops_variable_group.this.variable :
    library_var.name => library_var.is_secret ? library_var.secret_value : library_var.value
  }
  selected_variables = {
    for selected_var in var.azdo_library_variable_names :
    replace(selected_var, "_", "-") => local.azdo_variables[selected_var]
  }
}

data "azuredevops_project" "devops_project" {
  name = var.azdo_project_name
}

data "azuredevops_variable_group" "this" {
  project_id = data.azuredevops_project.devops_project.id
  name       = var.azdo_variable_group_name
}


data "azurerm_key_vault" "kv" {
  name                = var.keyvault_name
  resource_group_name = var.resource_group_name
}

resource "azurerm_key_vault_secret" "secrets" {
  for_each     = local.selected_variables

  name         = each.key
  value        = each.value
  key_vault_id = data.azurerm_key_vault.kv.id
  tags = {
    secretSource = "AZDO project: ${var.azdo_project_name} - variable group: ${var.azdo_variable_group_name}"
    managedBy    = "TerraformOpenTofu"
  }
}

