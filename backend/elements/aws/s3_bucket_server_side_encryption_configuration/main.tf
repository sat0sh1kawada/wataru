# aws_s3_bucket_server_side_encryption_configuration element
# main.tf
resource "aws_s3_bucket_server_side_encryption_configuration" "s3_bucket_server_side_encryption_configuration" {
  # Required
  bucket = var.s3_bucket_server_side_encryption_configuration_bucket
  rule {
    # Optional
    dynamic "apply_server_side_encryption_by_default" {
      for_each = var.s3_bucket_server_side_encryption_configuration_rule_apply_server_side_encryption_by_default
      content {
        # Required
        sse_algorithm = apply_server_side_encryption_by_default.value.s3_bucket_server_side_encryption_configuration_rule_apply_server_side_encryption_by_default_sse_algorithm
        # Optional
        kms_master_key_id = apply_server_side_encryption_by_default.value.s3_bucket_server_side_encryption_configuration_rule_apply_server_side_encryption_by_default_kms_master_key_id
      }
    }
    bucket_key_enabled = var.s3_bucket_server_side_encryption_configuration_rule_bucket_key_enabled
  }
  # Optional
  expected_bucket_owner = var.s3_bucket_server_side_encryption_configuration_expected_bucket_owner
}
