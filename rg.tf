terraform {
  cloud {

    organization = "Siddu"

    workspaces {
      name = "localfile"
    }
  }
}
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.37.0"
    }
  }
}

provider "azurerm" {
  features {}
client_id="8d79d4e9-dffa-421c-9110-7da51d96f2c5"
client_secret="CT88Q~fAjii3GzVOmXc0RPjK~JW1PrKQcyvxBcR-"
tenant_id="7e1b4521-93b6-473d-8e77-cf32c35bff05"
subscription_id="34a1c0d5-ab81-462c-89db-795e1572cd70"
}
variable "rgname" {
  default = "Terraformcloudrg-Siddu"
}

variable "location" {
  default = "West US 2"
}

resource "azurerm_resource_group" "example" {
  name     = var.rgname
  location = var.location
}
