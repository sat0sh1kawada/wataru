# aws_route_table element
# main.tf
resource "aws_route_table" "route_table" {
  # Required
  vpc_id = var.route_table_vpc_id
  # Optional
  dynamic "route" {
    for_each = var.route_table_route
    content {
      # Optional
      cidr_block                 = route.value.route_table_route_cidr_block
      ipv6_cidr_block            = route.value.route_table_route_ipv6_cidr_block
      destination_prefix_list_id = route.value.route_table_route_destination_prefix_list_id
      carrier_gateway_id         = route.value.route_table_route_carrier_gateway_id
      core_network_arn           = route.value.route_table_route_core_network_arn
      egress_only_gateway_id     = route.value.route_table_route_egress_only_gateway_id
      gateway_id                 = route.value.route_table_route_gateway_id
      local_gateway_id           = route.value.route_table_route_local_gateway_id
      nat_gateway_id             = route.value.route_table_route_nat_gateway_id
      network_interface_id       = route.value.route_table_route_network_interface_id
      transit_gateway_id         = route.value.route_table_route_transit_gateway_id
      vpc_endpoint_id            = route.value.route_table_route_vpc_endpoint_id
      vpc_peering_connection_id  = route.value.route_table_route_vpc_peering_connection_id
    }
  }
  tags             = var.route_table_tags
  propagating_vgws = var.route_table_propagating_vgws
}