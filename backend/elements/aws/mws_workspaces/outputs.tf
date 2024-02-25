# databricks_mws_workspaces element
# outputs.tf
output "mws_workspaces_workspace_id" {
  value = databricks_mws_workspaces.mws_workspaces.workspace_id
}

output "mws_workspaces_workspace_url" {
  value = databricks_mws_workspaces.mws_workspaces.workspace_url
}
