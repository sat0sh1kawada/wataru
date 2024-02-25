# databricks_metastore element
# main.tf
resource "databricks_metastore" "metastore" {
  # Required
  name = var.metastore_name
  # Optional
  storage_root                                      = var.metastore_storage_root
  region                                            = var.metastore_region
  owner                                             = var.metastore_owner
  delta_sharing_scope                               = var.metastore_delta_sharing_scope
  delta_sharing_recipient_token_lifetime_in_seconds = var.metastore_delta_sharing_recipient_token_lifetime_in_seconds
  delta_sharing_organization_name                   = var.metastore_delta_sharing_organization_name
  force_destroy                                     = var.metastore_force_destroy
}
