# aws_s3_bucket_public_access_block element
# variables.tf
variable "s3_bucket_public_access_block_bucket" {
  type = string
}
variable "s3_bucket_public_access_block_block_public_acls" {
  type = bool
}
variable "s3_bucket_public_access_block_block_public_policy" {
  type = bool
}
variable "s3_bucket_public_access_block_ignore_public_acls" {
  type = bool
}
variable "s3_bucket_public_access_block_restrict_public_buckets" {
  type = bool
}
