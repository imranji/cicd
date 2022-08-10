terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.17.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "khanakhazana" {
  name = "first-rg"
  location = "East Us"
}

output "id" {
  value = data.azurerm_resource_group.khanakhazana.id
}

