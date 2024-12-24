#!/bin/bash

# This script initializes the Terraform environment for the Azure DevOps KeyVault Sync project.
# Set Azure DevOps organization service URL and personal access token (PAT) as environment variables

export AZDO_PERSONAL_ACCESS_TOKEN=$PAT
export AZDO_ORG_SERVICE_URL="https://dev.azure.com/krashproof/"
tofu init
tofu plan -var-file=local-dev.tfvars
tofu apply -var-file=local-dev.tfvars