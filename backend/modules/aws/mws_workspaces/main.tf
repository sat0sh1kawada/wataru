# mws_workspaces module
# main.tf
module "mws_workspaces" {
  source = "../../../elements/aws/mws_workspaces"

  mws_workspaces_account_id                               = var.mws_workspaces_mws_workspaces_account_id
  mws_workspaces_workspace_name                           = var.mws_workspaces_mws_workspaces_workspace_name
  mws_workspaces_aws_region                               = var.mws_workspaces_mws_workspaces_aws_region
  mws_workspaces_credentials_id                           = var.mws_workspaces_mws_workspaces_credentials_id
  mws_workspaces_custom_tags                              = var.mws_workspaces_mws_workspaces_custom_tags
  mws_workspaces_deployment_name                          = var.mws_workspaces_mws_workspaces_deployment_name
  mws_workspaces_managed_services_customer_managed_key_id = var.mws_workspaces_mws_workspaces_managed_services_customer_managed_key_id
  mws_workspaces_network_id                               = var.mws_workspaces_mws_workspaces_network_id
  mws_workspaces_private_access_settings_id               = var.mws_workspaces_mws_workspaces_private_access_settings_id
  mws_workspaces_storage_configuration_id                 = var.mws_workspaces_mws_workspaces_storage_configuration_id
}

module "metastore_assignment" {
  source = "../../../elements/aws/metastore_assignment"

  metastore_assignment_metastore_id         = var.metastore_assignment_metastore_assignment_metastore_id
  metastore_assignment_workspace_id         = module.mws_workspaces.mws_workspaces_workspace_id
  metastore_assignment_default_catalog_name = var.metastore_assignment_metastore_assignment_default_catalog_name
}

data "databricks_user" "admin_user" {
  user_name = var.databricks_user_admin_user
}

module "mws_permission_assignment" {
  source = "../../../elements/aws/mws_permission_assignment"

  mws_permission_assignment_permissions  = var.mws_permission_assignment_mws_permission_assignment_permissions
  mws_permission_assignment_principal_id = data.databricks_user.admin_user.id
  mws_permission_assignment_workspace_id = module.mws_workspaces.mws_workspaces_workspace_id
  depends_on                             = [module.metastore_assignment]
}
