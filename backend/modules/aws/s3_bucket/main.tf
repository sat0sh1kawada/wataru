# s3_bucket module
# main.tf
module "s3_bucket" {
  source = "../../../elements/aws/s3_bucket"

  s3_bucket_bucket              = var.s3_bucket_s3_bucket_bucket
  s3_bucket_bucket_prefix       = var.s3_bucket_s3_bucket_bucket_prefix
  s3_bucket_tags                = var.s3_bucket_s3_bucket_tags
  s3_bucket_force_destroy       = var.s3_bucket_s3_bucket_force_destroy
  s3_bucket_object_lock_enabled = var.s3_bucket_s3_bucket_object_lock_enabled
}

module "s3_bucket_public_access_block" {
  source = "../../../elements/aws/s3_bucket_public_access_block"

  s3_bucket_public_access_block_bucket                  = module.s3_bucket.s3_bucket_bucket
  s3_bucket_public_access_block_block_public_acls       = var.s3_bucket_public_access_block_s3_bucket_public_access_block_block_public_acls
  s3_bucket_public_access_block_block_public_policy     = var.s3_bucket_public_access_block_s3_bucket_public_access_block_block_public_policy
  s3_bucket_public_access_block_ignore_public_acls      = var.s3_bucket_public_access_block_s3_bucket_public_access_block_ignore_public_acls
  s3_bucket_public_access_block_restrict_public_buckets = var.s3_bucket_public_access_block_s3_bucket_public_access_block_restrict_public_buckets
}

module "s3_bucket_server_side_encryption_configuration" {
  source = "../../../elements/aws/s3_bucket_server_side_encryption_configuration"

  s3_bucket_server_side_encryption_configuration_bucket                                       = module.s3_bucket.s3_bucket_bucket
  s3_bucket_server_side_encryption_configuration_rule_apply_server_side_encryption_by_default = var.s3_bucket_server_side_encryption_configuration_s3_bucket_server_side_encryption_configuration_rule_apply_server_side_encryption_by_default
  s3_bucket_server_side_encryption_configuration_rule_bucket_key_enabled                      = var.s3_bucket_server_side_encryption_configuration_s3_bucket_server_side_encryption_configuration_rule_bucket_key_enabled
  s3_bucket_server_side_encryption_configuration_expected_bucket_owner                        = var.s3_bucket_server_side_encryption_configuration_s3_bucket_server_side_encryption_configuration_expected_bucket_owner
}

module "s3_bucket_versioning" {
  source = "../../../elements/aws/s3_bucket_versioning"

  s3_bucket_versioning_bucket                              = module.s3_bucket.s3_bucket_bucket
  s3_bucket_versioning_versioning_configuration_status     = var.s3_bucket_versioning_s3_bucket_versioning_versioning_configuration_status
  s3_bucket_versioning_versioning_configuration_mfa_delete = var.s3_bucket_versioning_s3_bucket_versioning_versioning_configuration_mfa_delete
  s3_bucket_versioning_expected_bucket_owner               = var.s3_bucket_versioning_s3_bucket_versioning_expected_bucket_owner
  s3_bucket_versioning_mfa                                 = var.s3_bucket_versioning_s3_bucket_versioning_mfa
}
