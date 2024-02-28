# mws_private_access_settings module
# variables.tf
variable "mws_private_access_settings_mws_private_access_settings_private_access_settings_name" {
  type = string
}
variable "mws_private_access_settings_mws_private_access_settings_region" {
  type = string
}
variable "mws_private_access_settings_mws_private_access_settings_account_id" {
  type = string
}
variable "mws_private_access_settings_mws_private_access_settings_public_access_enabled" {
  type = bool
}
variable "mws_private_access_settings_mws_private_access_settings_private_access_level" {
  type = string
}
variable "mws_private_access_settings_mws_private_access_settings_allowed_vpc_endpoint_ids" {
  type = list(string)
}
