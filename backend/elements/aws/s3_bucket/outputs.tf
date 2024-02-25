# aws_s3_bucket element
# outputs.tf
output "s3_bucket_bucket" {
  value = aws_s3_bucket.s3_bucket.bucket
}
