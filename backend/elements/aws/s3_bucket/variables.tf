# aws_s3_bucket element
# variables.tf
variable "s3_bucket_bucket" {
  type = string
}
variable "s3_bucket_bucket_prefix" {
  type = string
}
variable "s3_bucket_force_destroy" {
  type = bool
}
variable "s3_bucket_object_lock_enabled" {
  type = bool
}
variable "s3_bucket_tags" {
  type = map(string)
}
