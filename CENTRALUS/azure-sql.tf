  #Allows you to manage an Azure SQL Server

resource "azurerm_sql_server" "demosqlserver" {
  name                         = var.sqlserver
  resource_group_name          = "${azurerm_resource_group.demorg.name}"
  location                     = var.resource_group_location
  version                      = "12.0"
  administrator_login          = "4dm1n157r470r"
  administrator_login_password = "4-v3ry-53cr37-p455w0rd"
}

#Allows you to manage an Azure SQL Server
# azurerm_sql_database 

resource "azurerm_sql_database" "demosqlserverdb" {
  name                             =  var.db
  resource_group_name              =  "${azurerm_resource_group.demorg.name}"
  location                         =  var.resource_group_location
  server_name                      = "${azurerm_sql_server.demosqlserver.name}"
  edition                          = "Basic"
  collation                        = "SQL_Latin1_General_CP1_CI_AS"
  create_mode                      = "Default"
  requested_service_objective_name = "Basic"
}

# Enables the "Allow Access to Azure services" box as described in the API docs
# https://docs.microsoft.com/en-us/rest/api/sql/firewallrules/createorupdate

resource "azurerm_sql_firewall_rule" "demosqlfirewell" {
  name                = "allow-azure-services"
  resource_group_name =  "${azurerm_resource_group.demorg.name}" 
  server_name         = "${azurerm_sql_server.demosqlserver.name}"
  start_ip_address    = "0.0.0.0"
  end_ip_address      = "0.0.0.0"
}