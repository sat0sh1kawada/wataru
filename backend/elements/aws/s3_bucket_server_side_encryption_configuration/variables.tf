# aws_s3_bucket_server_side_encryption_configuration element
# variables.tf
variable "s3_bucket_server_side_encryption_configuration_bucket" {
  type = string
}
variable "s3_bucket_server_side_encryption_configuration_rule_apply_server_side_encryption_by_default" {
  type = list(object({
    s3_bucket_server_side_encryption_configuration_rule_apply_server_side_encryption_by_default_sse_algorithm     = string
    s3_bucket_server_side_encryption_configuration_rule_apply_server_side_encryption_by_default_kms_master_key_id = string
  }))
}
variable "s3_bucket_server_side_encryption_configuration_rule_bucket_key_enabled" {
  type = bool
}
variable "s3_bucket_server_side_encryption_configuration_expected_bucket_owner" {
  type = string
}
