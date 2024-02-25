# mws_workspaces module
# outputs.tf
output "mws_workspaces_workspace_id" {
  value = module.mws_workspaces.mws_workspaces_workspace_id
}

output "mws_workspaces_workspace_url" {
  value = module.mws_workspaces.mws_workspaces_workspace_url
}
