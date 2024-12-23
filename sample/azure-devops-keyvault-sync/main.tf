module "ado_to_akv_sync_vargroupA" {
  source              = "../../modules/ado-to-akv-sync"
  
  azdo_project_name   = "DevOps"
  azdo_variable_group_name = "my_variable_group"
  azdo_library_variable_names = [
    "database_url",
    "api_endpoint",
    "user_name",
    "email_address",
    "first_name_last_name",
    "_project_with_lead_underscore",
    "project_trailing_underscore_",
    "__project__double__underscore",
    "name-with-hyphen"
  ]
  keyvault_name       = "key-vault-name"
  resource_group_name = "azure-keyvault-rg"
}