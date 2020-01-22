variable "resource_group_name" {
  type        = string
  description = "The default Azure region for the resource provisioning"
  default = "mmech-rg"
}

variable "resource_group_name_common" {
  type        = string
  description = "The default Azure region for the resource provisioning"
  default = "mmech-ugm-rg"
}

variable "resource_group_location" {
  type        = string
  description = "The default Azure region for the resource provisioning"
  default = "West Europe"
}
variable "appinsight" {
type        = "string"
description = "Enter the Application insight name"
default = "mmech_dev_ece"
}

variable "storageName" {
  type        = string
  description = "Enter the Storage Account name"
  default = "mmechugmstrgacdevece"
}

variable "sqlserver" {
  type        = string
  description = "Enter the Sql Server name"
  default = "mmev-ece"
}

variable "db" {
  type        = string
  description = "Enter the Data base name"
  default = "mmechv-ece"
}

variable "kv" {
  type        = string
  description = "Enter the Key Vault name"
  default = "mmech-ece"
}

variable "acr" {
  type        = string
  description = "Enter the Container Registry name (Unique)"
  default = "mmeece"
}
