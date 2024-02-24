# aws_route element
# variables.tf
variable "route_route_table_id" {
  type = string
}
variable "route_destination_cidr_block" {
  type = string
}
variable "route_destination_ipv6_cidr_block" {
  type = string
}
variable "route_destination_prefix_list_id" {
  type = string
}
variable "route_carrier_gateway_id" {
  type = string
}
variable "route_core_network_arn" {
  type = string
}
variable "route_egress_only_gateway_id" {
  type = string
}
variable "route_gateway_id" {
  type = string
}
variable "route_nat_gateway_id" {
  type = string
}
variable "route_local_gateway_id" {
  type = string
}
variable "route_network_interface_id" {
  type = string
}
variable "route_transit_gateway_id" {
  type = string
}
variable "route_vpc_endpoint_id" {
  type = string
}
variable "route_vpc_peering_connection_id" {
  type = string
}
