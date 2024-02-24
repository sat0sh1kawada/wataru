# aws_internet_gateway element
# variables.tf
variable "internet_gateway_vpc_id" {
  type = string
}
variable "internet_gateway_tags" {
  type = map(string)
}

