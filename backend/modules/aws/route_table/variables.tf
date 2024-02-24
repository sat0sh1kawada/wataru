# route_table module
# variables.tf
variable "route_table_route_table_vpc_id" {
  type = string
}
variable "route_table_route_table_route" {
  type = list(object({
    route_table_cidr_block                 = string
    route_table_ipv6_cidr_block            = string
    route_table_destination_prefix_list_id = string
    route_table_carrier_gateway_id         = string
    route_table_core_network_arn           = string
    route_table_egress_only_gateway_id     = string
    route_table_gateway_id                 = string
    route_table_local_gateway_id           = string
    route_table_nat_gateway_id             = string
    route_table_network_interface_id       = string
    route_table_transit_gateway_id         = string
    route_table_vpc_endpoint_id            = string
    route_table_vpc_peering_connection_id  = string
  }))
}
variable "route_table_route_table_tags" {
  type = map(string)
}
variable "route_table_route_table_propagating_vgws" {
  type = set(string)
}