# databricks_mws_workspaces element
# main.tf
resource "databricks_mws_workspaces" "mws_workspaces" {
  # Required
  account_id     = var.mws_workspaces_account_id
  workspace_name = var.mws_workspaces_workspace_name
  # Optional
  aws_region                               = var.mws_workspaces_aws_region
  credentials_id                           = var.mws_workspaces_credentials_id
  custom_tags                              = var.mws_workspaces_custom_tags
  deployment_name                          = var.mws_workspaces_deployment_name
  managed_services_customer_managed_key_id = var.mws_workspaces_managed_services_customer_managed_key_id
  network_id                               = var.mws_workspaces_network_id
  private_access_settings_id               = var.mws_workspaces_private_access_settings_id
  storage_configuration_id                 = var.mws_workspaces_storage_configuration_id
}
