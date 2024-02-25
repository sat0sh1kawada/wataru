# s3_bucket module
# variables.tf
variable "s3_bucket_s3_bucket_bucket" {
  type = string
}
variable "s3_bucket_s3_bucket_bucket_prefix" {
  type = string
}
variable "s3_bucket_s3_bucket_force_destroy" {
  type = bool
}
variable "s3_bucket_s3_bucket_object_lock_enabled" {
  type = bool
}
variable "s3_bucket_s3_bucket_tags" {
  type = map(string)
}
variable "s3_bucket_public_access_block_s3_bucket_public_access_block_block_public_acls" {
  type = bool
}
variable "s3_bucket_public_access_block_s3_bucket_public_access_block_block_public_policy" {
  type = bool
}
variable "s3_bucket_public_access_block_s3_bucket_public_access_block_ignore_public_acls" {
  type = bool
}
variable "s3_bucket_public_access_block_s3_bucket_public_access_block_restrict_public_buckets" {
  type = bool
}
variable "s3_bucket_server_side_encryption_configuration_s3_bucket_server_side_encryption_configuration_rule_apply_server_side_encryption_by_default" {
  type = list(object({
    s3_bucket_server_side_encryption_configuration_rule_apply_server_side_encryption_by_default_sse_algorithm     = string
    s3_bucket_server_side_encryption_configuration_rule_apply_server_side_encryption_by_default_kms_master_key_id = string
  }))
}
variable "s3_bucket_server_side_encryption_configuration_s3_bucket_server_side_encryption_configuration_rule_bucket_key_enabled" {
  type = bool
}
variable "s3_bucket_server_side_encryption_configuration_s3_bucket_server_side_encryption_configuration_expected_bucket_owner" {
  type = string
}
variable "s3_bucket_versioning_s3_bucket_versioning_versioning_configuration_status" {
  type = string
}
variable "s3_bucket_versioning_s3_bucket_versioning_versioning_configuration_mfa_delete" {
  type = string
}
variable "s3_bucket_versioning_s3_bucket_versioning_expected_bucket_owner" {
  type = string
}
variable "s3_bucket_versioning_s3_bucket_versioning_mfa" {
  type = string
}
