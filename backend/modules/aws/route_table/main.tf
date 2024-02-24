# route_table module
# main.tf
module "route_table" {
  source = "../../../elements/aws/route_table"

  route_table_vpc_id           = var.route_table_route_table_vpc_id
  route_table_route            = var.route_table_route_table_route
  route_table_tags             = var.route_table_route_table_tags
  route_table_propagating_vgws = var.route_table_route_table_propagating_vgws
}