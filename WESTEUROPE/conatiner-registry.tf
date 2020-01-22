
# Manages an Azure Container Registry.

resource "azurerm_container_registry" "demoacr" {
  name                = "${var.acr}"
  resource_group_name =  "${azurerm_resource_group.democommonrg.name}"
  location            =  var.resource_group_location
  sku                 = "Standard"
  admin_enabled       = true 
  #georeplication_locations = ["East US", "West Europe"]
}
