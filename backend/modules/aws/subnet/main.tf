# subnet module
# main.tf
module "subnet" {
  source = "../../../elements/aws/subnet"

  subnet_vpc_id                                         = var.subnet_subnet_vpc_id
  subnet_assign_ipv6_address_on_creation                = var.subnet_subnet_assign_ipv6_address_on_creation
  subnet_availability_zone                              = var.subnet_subnet_availability_zone
  subnet_availability_zone_id                           = var.subnet_subnet_availability_zone_id
  subnet_cidr_block                                     = var.subnet_subnet_cidr_block
  subnet_customer_owned_ipv4_pool                       = var.subnet_subnet_customer_owned_ipv4_pool
  subnet_enable_dns64                                   = var.subnet_subnet_enable_dns64
  subnet_enable_lni_at_device_index                     = var.subnet_subnet_enable_lni_at_device_index
  subnet_enable_resource_name_dns_aaaa_record_on_launch = var.subnet_subnet_enable_resource_name_dns_aaaa_record_on_launch
  subnet_enable_resource_name_dns_a_record_on_launch    = var.subnet_subnet_enable_resource_name_dns_a_record_on_launch
  subnet_ipv6_cidr_block                                = var.subnet_subnet_ipv6_cidr_block
  subnet_ipv6_native                                    = var.subnet_subnet_ipv6_native
  subnet_map_customer_owned_ip_on_launch                = var.subnet_subnet_map_customer_owned_ip_on_launch
  subnet_map_public_ip_on_launch                        = var.subnet_subnet_map_public_ip_on_launch
  subnet_outpost_arn                                    = var.subnet_subnet_outpost_arn
  subnet_private_dns_hostname_type_on_launch            = var.subnet_subnet_private_dns_hostname_type_on_launch
  subnet_tags                                           = var.subnet_subnet_tags
}

module "route_table_association" {
  source = "../../../elements/aws/route_table_association"

  route_table_association_route_table_id = var.subnet_route_table_association_route_table_id
  route_table_association_subnet_id      = module.subnet.subnet_id
  route_table_association_gateway_id     = null

}
