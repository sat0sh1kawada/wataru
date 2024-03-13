# metastore_assignment module
# main.tf
module "metastore_assignment" {
  source = "../../../elements/aws/metastore_assignment"

  metastore_assignment_metastore_id         = var.metastore_assignment_metastore_assignment_metastore_id
  metastore_assignment_workspace_id         = var.metastore_assignment_metastore_assignment_workspace_id
  metastore_assignment_default_catalog_name = var.metastore_assignment_metastore_assignment_default_catalog_name
}
