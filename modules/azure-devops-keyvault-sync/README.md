# Azure DevOps to Azure Key Vault Sync Module

## Overview

This module captures specified variables from an Azure DevOps variable group in Azure pipeline library to Azure Key Vault secrets as selected key/value pairs

Original ticket: https://krashproof.atlassian.net/browse/DEVOPS-87 

## Usage
Sample usage of the module is as follows:
```hcl
module "ado_to_akv_sync_vargroupA" {
  source              = "../../modules/azure-devops-keyvault-sync"
  
  azdo_project_name   = var.azdo_project_name 
  azdo_variable_group_name = var.azdo_variable_group_name
  azdo_library_variable_names = var.azdo_library_variable_names
  keyvault_name       = var.keyvault_name
  resource_group_name = var.resource_group_name
}
```


Inputs:
- azdo_project_name: Azure DevOps project name
- azdo_variable_group_name: Azure DevOps variable group name
- azdo_library_variable_names: List of Azure DevOps library variable names to sync
- keyvault_name: Azure Key Vault name
- resource_group_name: Azure Resource Group name for Key vault
- AZDO_PERSONAL_ACCESS_TOKEN: Azure DevOps Personal Access Token set in the environment variable AZDO_PERSONAL_ACCESS_TOKEN for local execution

Example
```hcl
azdo_variable_group_name="DevOpsVariableGroup"
azdo_project_name="DevOps"
resource_group_name="sample-resource-group"
keyvault_name="terraform-devops-87"
azdo_library_variable_names=[
    "Name", 
    "Organization",
    "database_url",
    "email__address",
    "user_name_",
]
```


# Requirements
- Terraform OpenTofu version v1.7.0 or later