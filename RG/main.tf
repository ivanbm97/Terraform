provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg-1" {
  name     = "terraform-rg"
  location = "West Europe"
  tags = {
    Entorno = "Test"
  }
}

output "rg_id" {
	description = "resource group id"
	value = azurerm_resource_group.rg-1.id
}