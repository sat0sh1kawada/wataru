# mws_private_access_settings module
# main.tf
module "mws_private_access_settings" {
  source = "../../../elements/aws/mws_private_access_settings"

  mws_private_access_settings_private_access_settings_name = var.mws_private_access_settings_mws_private_access_settings_private_access_settings_name
  mws_private_access_settings_public_access_enabled        = var.mws_private_access_settings_mws_private_access_settings_public_access_enabled
  mws_private_access_settings_account_id                   = var.mws_private_access_settings_mws_private_access_settings_account_id
  mws_private_access_settings_region                       = var.mws_private_access_settings_mws_private_access_settings_region
  mws_private_access_settings_private_access_level         = var.mws_private_access_settings_mws_private_access_settings_private_access_level
  mws_private_access_settings_allowed_vpc_endpoint_ids     = var.mws_private_access_settings_mws_private_access_settings_allowed_vpc_endpoint_ids
}
