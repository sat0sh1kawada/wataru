# mws_workspaces module
# variables.tf
variable "mws_workspaces_mws_workspaces_account_id" {
  type = string
}
variable "mws_workspaces_mws_workspaces_workspace_name" {
  type = string
}
variable "mws_workspaces_mws_workspaces_aws_region" {
  type = string
}
variable "mws_workspaces_mws_workspaces_credentials_id" {
  type = string
}
variable "mws_workspaces_mws_workspaces_custom_tags" {
  type = map(string)
}
variable "mws_workspaces_mws_workspaces_deployment_name" {
  type = string
}
variable "mws_workspaces_mws_workspaces_managed_services_customer_managed_key_id" {
  type = string
}
variable "mws_workspaces_mws_workspaces_network_id" {
  type = string
}
variable "mws_workspaces_mws_workspaces_private_access_settings_id" {
  type = string
}
variable "mws_workspaces_mws_workspaces_storage_configuration_id" {
  type = string
}
variable "metastore_assignment_metastore_assignment_metastore_id" {
  type = string
}
variable "metastore_assignment_metastore_assignment_default_catalog_name" {
  type = string
}
variable "databricks_user_admin_user" {
  type = string
}
variable "mws_permission_assignment_mws_permission_assignment_permissions" {
  type = list(string)
}
