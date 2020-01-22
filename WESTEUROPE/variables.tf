variable "resource_group_name" {
  type        = string
  description = "The default Azure region for the resource provisioning"
  default = "mmech-ugm-dev-ece-rg"
}

variable "resource_group_name_common" {
  type        = string
  description = "The default Azure region for the resource provisioning"
  default = "mmech-ugm-dev-common-ece-rg"
}

variable "resource_group_location" {
  type        = string
  description = "The default Azure region for the resource provisioning"
  default = "West Europe"
}

variable "subscription_id" {
  type        = string
  description = "Enter Subscription ID for provisioning resources in Azure."
  default = "XYXYX-SubscriptionID-XYXYX"
}

variable "client_id" {
  type        = string
  description = "Enter Client ID for Application created in Azure AD"
  default = "XYXYX-ClientID-XYXYX"
}

variable "client_secret" {
  type        = string
  description = "Enter Client secret for Application in Azure AD"
  default = "XYXYX-ClientSecret-XYXYX"
}

variable "tenant_id" {
  type        = string
  description = "Enter Tenant ID / Directory ID of your Azure AD. Run Get-AzureSubscription to know your Tenant ID"
  default = "XYXYX-TenantID-XYXYX"
}

variable "object_id" {
  type        = string
  description = "Enter Object ID of a user or a service principal in Azure Active Directory"
  default = "XYXYX-ObjectID-XYXYX"
}

/*variable "appinsight" {
  type        = "string"
  description = "Enter the Application insight name"
  default = "mmech_ugmappinsights_dev_ece"
}*/

variable "storageName" {
  type        = string
  description = "Enter the Storage Account name"
  default = "mmechugmstrgacdevece"
}

variable "sqlserver" {
  type        = string
  description = "Enter the Sql Server name"
  default = "mmech-ugmsqlsrv-dev-ece"
}

variable "db" {
  type        = string
  description = "Enter the Data base name"
  default = "mmech-ugmdb-dev-ece"
}

variable "kv" {
  type        = string
  description = "Enter the Key Vault name"
  default = "mmech-ugmkv-dev-ece"
}

variable "acr" {
  type        = string
  description = "Enter the Container Registry name (Unique)"
  default = "mmechugmacrdevece"
}