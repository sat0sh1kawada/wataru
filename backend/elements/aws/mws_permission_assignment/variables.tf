# databricks_mws_permission_assignment resource
# variables.tf
variable "mws_permission_assignment_workspace_id" {
  type = string
}
variable "mws_permission_assignment_principal_id" {
  type = string
}
variable "mws_permission_assignment_permissions" {
  type = list(string)
}
