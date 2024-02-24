# aws_iam_role element
# variables.tf
variable "iam_role_assume_role_policy" {
  type = string
}
variable "iam_role_description" {
  type = string
}
variable "iam_role_force_detach_policies" {
  type = bool
}
variable "iam_role_inline_policy" {
  type = map(object({
    name   = string
    policy = string
  }))
}
variable "iam_role_managed_policy_arns" {
  type = set(string)
}
variable "iam_role_max_session_duration" {
  type = number
}
variable "iam_role_name" {
  type = string
}
variable "iam_role_name_prefix" {
  type = string
}
variable "iam_role_path" {
  type = string
}
variable "iam_role_permissions_boundary" {
  type = string
}
variable "iam_role_tags" {
  type = map(string)
}
