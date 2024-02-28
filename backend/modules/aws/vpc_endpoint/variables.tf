# vpc_endpoint module
# variables.tf
variable "vpc_endpoint_vpc_endpoint_service_name" {
  type = string
}
variable "vpc_endpoint_vpc_endpoint_vpc_id" {
  type = string
}
variable "vpc_endpoint_vpc_endpoint_auto_accept" {
  type = bool
}
variable "vpc_endpoint_vpc_endpoint_policy" {
  type = string
}
variable "vpc_endpoint_vpc_endpoint_private_dns_enabled" {
  type = bool
}
variable "vpc_endpoint_vpc_endpoint_dns_options" {
  type = list(object({
    vpc_endpoint_dns_options_dns_record_ip_type                             = string
    vpc_endpoint_dns_options_private_dns_only_for_inbound_resolver_endpoint = bool
  }))
}
variable "vpc_endpoint_vpc_endpoint_ip_address_type" {
  type = string
}
variable "vpc_endpoint_vpc_endpoint_route_table_ids" {
  type = set(string)
}
variable "vpc_endpoint_vpc_endpoint_subnet_ids" {
  type = set(string)
}
variable "vpc_endpoint_vpc_endpoint_security_group_ids" {
  type = set(string)
}
variable "vpc_endpoint_vpc_endpoint_tags" {
  type = map(string)
}
variable "vpc_endpoint_vpc_endpoint_vpc_endpoint_type" {
  type = string
}
