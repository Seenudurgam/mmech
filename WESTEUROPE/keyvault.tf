#Manages a Key Vault.

resource "azurerm_key_vault" "demokv" {
  name                        = var.kv
  location                    = var.resource_group_location
  resource_group_name         = "${azurerm_resource_group.democommonrg.name}"
  enabled_for_disk_encryption = true
  tenant_id                   = var.tenant_id

  sku_name = "standard"

  access_policy { 
    tenant_id = var.tenant_id
    object_id = var.object_id

    key_permissions = [
      "get",
    ]

    secret_permissions = [
      "get",
    ]

    storage_permissions = [
      "get",
    ]
  }

  network_acls {
    default_action = "Deny"
    bypass         = "AzureServices"
  }

  tags = {
    environment = "demo"
  }
}