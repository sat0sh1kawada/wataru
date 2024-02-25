# databricks_mws_configurations element
# main.tf
resource "databricks_mws_storage_configurations" "mws_storage_configurations" {
  # Required
  account_id                 = var.mws_storage_configurations_account_id
  bucket_name                = var.mws_storage_configurations_bucket_name
  storage_configuration_name = var.mws_storage_configurations_storage_configuration_name
}
