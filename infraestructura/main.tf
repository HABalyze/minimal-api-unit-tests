provider "azurerm"{
    features{}
}

resource "azurerm_resource_group" "rg" {
    name = "ProyectoA"
    location = "eastus2"
}

resource "azurerm_container_app_enviroment" "apps_env" {
    name                    = "ProyectoA-env"
    location                = azurerm_resource_group.rg.location
    resource_group_name     = azurerm_resource_group.rg.name
}