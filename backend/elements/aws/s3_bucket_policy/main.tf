# aws_s3_bucket_policy element
# main.tf
resource "aws_s3_bucket_policy" "s3_bucket_policy" {
  # Required
  bucket = var.s3_bucket_policy_bucket
  policy = var.s3_bucket_policy_policy
}
