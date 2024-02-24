# route module
# main.tf
module "route" {
  source = "../../../elements/aws/route"

  route_route_table_id              = var.route_route_route_table_id
  route_destination_cidr_block      = var.route_route_destination_cidr_block
  route_destination_ipv6_cidr_block = var.route_route_destination_ipv6_cidr_block
  route_destination_prefix_list_id  = var.route_route_destination_prefix_list_id
  route_carrier_gateway_id          = var.route_route_carrier_gateway_id
  route_core_network_arn            = var.route_route_core_network_arn
  route_egress_only_gateway_id      = var.route_route_egress_only_gateway_id
  route_gateway_id                  = var.route_route_gateway_id
  route_nat_gateway_id              = var.route_route_nat_gateway_id
  route_local_gateway_id            = var.route_route_local_gateway_id
  route_network_interface_id        = var.route_route_network_interface_id
  route_transit_gateway_id          = var.route_route_transit_gateway_id
  route_vpc_endpoint_id             = var.route_route_vpc_endpoint_id
  route_vpc_peering_connection_id   = var.route_route_vpc_peering_connection_id
}