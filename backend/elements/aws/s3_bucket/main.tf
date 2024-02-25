# aws_s3_bucket element
# main.tf
resource "aws_s3_bucket" "s3_bucket" {
  # Optional
  bucket              = var.s3_bucket_bucket
  bucket_prefix       = var.s3_bucket_bucket_prefix
  force_destroy       = var.s3_bucket_force_destroy
  object_lock_enabled = var.s3_bucket_object_lock_enabled
  tags                = var.s3_bucket_tags
}
