# metastore module
# main.tf
module "metastore" {
  source = "../../../elements/aws/metastore"

  metastore_name                                              = var.metastore_metastore_name
  metastore_storage_root                                      = var.metastore_metastore_storage_root
  metastore_region                                            = var.metastore_metastore_region
  metastore_owner                                             = var.metastore_metastore_owner
  metastore_delta_sharing_scope                               = var.metastore_metastore_delta_sharing_scope
  metastore_delta_sharing_recipient_token_lifetime_in_seconds = var.metastore_metastore_delta_sharing_recipient_token_lifetime_in_seconds
  metastore_delta_sharing_organization_name                   = var.metastore_metastore_delta_sharing_organization_name
  metastore_force_destroy                                     = var.metastore_metastore_force_destroy
}
