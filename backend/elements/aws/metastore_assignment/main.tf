# databricks_metastore_assignment element
# main.tf
resource "databricks_metastore_assignment" "metastore_assignment" {
  metastore_id         = var.metastore_assignment_metastore_id
  workspace_id         = var.metastore_assignment_workspace_id
  default_catalog_name = var.metastore_assignment_default_catalog_name
}
