# databricks_mws_credentials element
# main.tf
resource "databricks_mws_credentials" "mws_credentials" {
  # Required
  credentials_name = var.mws_credentials_credentials_name
  role_arn         = var.mws_credentials_role_arn
}
