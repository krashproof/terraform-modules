# Azure DevOps to Azure Key Vault Sync Module

## Overview

This module captures specified variables from an Azure DevOps variable group in Azure pipeline library to Azure Key Vault secrets as selected key/value pairs

Original ticket: https://krashproof.atlassian.net/browse/DEVOPS-87 

## Usage

```hcl
module "ado_to_akv_sync_vargroupA" {
  source              = "path/to/module"
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

```


# Requirements
- Terraform OpenTofu version v1.7.0 or later