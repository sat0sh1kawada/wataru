# aws_nat_gateway element
# variables.tf
variable "nat_gateway_subnet_id" {
  type = string
}
variable "nat_gateway_allocation_id" {
  type = string
}
variable "nat_gateway_connectivity_type" {
  type = string
}
variable "nat_gateway_private_ip" {
  type = string
}
variable "nat_gateway_secondary_allocation_ids" {
  type = set(string)
}
variable "nat_gateway_secondary_private_ip_address_count" {
  type = number
}
variable "nat_gateway_secondary_private_ip_addresses" {
  type = set(string)
}
variable "nat_gateway_tags" {
  type = map(string)
}
