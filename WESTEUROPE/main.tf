# Configure the Microsoft Azure Provider

provider "azurerm" {
 # We recommend pinning to the specific version of the Azure Provider you're using
 # since new versions are released frequently
 version = "=1.38.0"
 # More information on the authentication methods supported by
# the AzureRM Provider can be found here:
# http://terraform.io/docs/providers/azurerm/index.html

 }

 # Create a resource group
resource "azurerm_resource_group" "demorg" {
   name     = var.resource_group_name
   location = var.resource_group_location
 }
 # Create a resource group for common resources
 resource "azurerm_resource_group" "democommonrg" {
   name     = var.resource_group_name_common
   location = var.resource_group_location
 }
