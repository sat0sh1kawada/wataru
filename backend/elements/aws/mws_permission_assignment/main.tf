# databricks_mws_permission_assignment resource
# main.tf
resource "databricks_mws_permission_assignment" "mws_permission_assignment" {
  # Required
  workspace_id = var.mws_permission_assignment_workspace_id
  principal_id = var.mws_permission_assignment_principal_id
  permissions  = var.mws_permission_assignment_permissions
}
