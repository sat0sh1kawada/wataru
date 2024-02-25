# aws_s3_bucket_versioning element
# variables.tf
variable "s3_bucket_versioning_bucket" {
  type = string
}
variable "s3_bucket_versioning_versioning_configuration_status" {
  type = string
}
variable "s3_bucket_versioning_versioning_configuration_mfa_delete" {
  type = string
}
variable "s3_bucket_versioning_expected_bucket_owner" {
  type = string
}
variable "s3_bucket_versioning_mfa" {
  type = string
}
