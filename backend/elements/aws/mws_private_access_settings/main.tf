# databricks_mws_private_access_settings element
# main.tf
resource "databricks_mws_private_access_settings" "mws_private_access_settings" {
  # Required
  private_access_settings_name = var.mws_private_access_settings_private_access_settings_name
  region                       = var.mws_private_access_settings_region
  # Optional
  account_id               = var.mws_private_access_settings_account_id
  public_access_enabled    = var.mws_private_access_settings_public_access_enabled
  private_access_level     = var.mws_private_access_settings_private_access_level
  allowed_vpc_endpoint_ids = var.mws_private_access_settings_allowed_vpc_endpoint_ids
}
