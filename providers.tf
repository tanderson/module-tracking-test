# Providers
# https://www.terraform.io/docs/configuration/terraform.html
# https://www.terraform.io/docs/configuration/providers.html
# https://www.terraform.io/docs/configuration/expressions.html
# https://www.terraform.io/docs/configuration/functions.html

terraform {
  required_version = "~> 1.0"
  ///*
  backend "remote" {
    hostname     = "tfe.teck.dev"
    organization = "TeckResourcesTDS"
    workspaces { name = "terraform-azure-pro-hvc-bo-predev-centralus" }
  }
  //*/
  required_providers {
    azuread = {
      version = "~> 2.0"
      source  = "hashicorp/azuread"
    }
    azurerm = {
      version = "~> 3.0"
      source  = "hashicorp/azurerm"
    }
    random = {
      version = "~> 3.0"
      source  = "hashicorp/random"
    }
    azuredevops = {
      version = "~> 0.0"
      source  = "registry.terraform.io/microsoft/azuredevops"
    }
    databricks = {
      version = "~> 0.0"
      source  = "registry.terraform.io/databrickslabs/databricks"
    }
  }
}
