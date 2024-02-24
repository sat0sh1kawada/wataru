# aws_iam_policy element
# variables.tf
variable "iam_policy_policy" {
  type = string
}
variable "iam_policy_description" {
  type = string
}
variable "iam_policy_name" {
  type = string
}
variable "iam_policy_name_prefix" {
  type = string
}
variable "iam_policy_path" {
  type = string
}
variable "iam_policy_tags" {
  type = map(string)
}
