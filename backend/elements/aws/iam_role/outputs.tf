# aws_iam_role element
# outputs.tf
output "iam_role_id" {
  value = aws_iam_role.iam_role.id
}

output "iam_role_arn" {
  value = aws_iam_role.iam_role.arn
}