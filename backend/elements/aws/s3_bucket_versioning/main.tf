# aws_s3_bucket_versioning element
# main.tf
resource "aws_s3_bucket_versioning" "s3_bucket_versioning" {
  # Required
  bucket = var.s3_bucket_versioning_bucket
  versioning_configuration {
    # Required
    status = var.s3_bucket_versioning_versioning_configuration_status
    # Optional
    mfa_delete = var.s3_bucket_versioning_versioning_configuration_mfa_delete
  }
  # Optional
  expected_bucket_owner = var.s3_bucket_versioning_expected_bucket_owner
  mfa                   = var.s3_bucket_versioning_mfa
}
