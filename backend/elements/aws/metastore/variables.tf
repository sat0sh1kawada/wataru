# databricks_metastore element
# variables.tf
variable "metastore_name" {
  type = string
}
variable "metastore_storage_root" {
  type = string
}
variable "metastore_region" {
  type = string
}
variable "metastore_owner" {
  type = string
}
variable "metastore_delta_sharing_scope" {
  type = string
}
variable "metastore_delta_sharing_recipient_token_lifetime_in_seconds" {
  type = number
}
variable "metastore_delta_sharing_organization_name" {
  type = string
}
variable "metastore_force_destroy" {
  type = bool
}
