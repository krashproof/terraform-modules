module "ado_to_akv_sync_vargroupA" {
  source              = "../../modules/azure-devops-keyvault-sync"
  
  azdo_project_name   = var.azdo_project_name 
  azdo_variable_group_name = var.azdo_variable_group_name
  azdo_library_variable_names = var.azdo_library_variable_names
  keyvault_name       = var.keyvault_name
  resource_group_name = var.resource_group_name
}