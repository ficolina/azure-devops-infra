# Terraform remote backend configuration using Azure Storage.
# The state file is stored in a blob container instead of locally.
# Azure Blob lease mechanism is used to enable state locking,
# preventing multiple users or pipelines from modifying infrastructure at the same time.
terraform {
  backend "azurerm" {
    resource_group_name  = "rg-tfstate"
    storage_account_name = "tfstatefilip2026"
    container_name       = "tfstate"
    key                  = "azure-devops-infra.tfstate"
  }
}
