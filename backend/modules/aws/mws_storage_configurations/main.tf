# mws_storage_configurations module
# main.tf
data "databricks_aws_bucket_policy" "this" {
  bucket = var.mws_storage_configurations_mws_storage_configurations_bucket_name
}

module "s3_bucket_policy" {
  source = "../../../elements/aws/s3_bucket_policy"

  s3_bucket_policy_bucket = var.mws_storage_configurations_mws_storage_configurations_bucket_name
  s3_bucket_policy_policy = data.databricks_aws_bucket_policy.this.json
}

module "mws_storage_configurations" {
  source = "../../../elements/aws/mws_storage_configurations"

  mws_storage_configurations_account_id                 = var.mws_storage_configurations_mws_storage_configurations_account_id
  mws_storage_configurations_bucket_name                = var.mws_storage_configurations_mws_storage_configurations_bucket_name
  mws_storage_configurations_storage_configuration_name = var.mws_storage_configurations_mws_storage_configurations_storage_configuration_name
}
