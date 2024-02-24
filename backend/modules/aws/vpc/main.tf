# vpc module
# main.tf
module "vpc" {
  source = "../../../elements/aws/vpc"

  vpc_cidr_block                           = var.vpc_vpc_cidr_block
  vpc_instance_tenancy                     = var.vpc_vpc_instance_tenancy
  vpc_ipv4_ipam_pool_id                    = var.vpc_vpc_ipv4_ipam_pool_id
  vpc_ipv4_netmask_length                  = var.vpc_vpc_ipv4_netmask_length
  vpc_ipv6_ipam_pool_id                    = var.vpc_vpc_ipv6_ipam_pool_id
  vpc_ipv6_cidr_block                      = var.vpc_vpc_ipv6_cidr_block
  vpc_ipv6_netmask_length                  = var.vpc_vpc_ipv6_netmask_length
  vpc_ipv6_cidr_block_network_border_group = var.vpc_vpc_ipv6_cidr_block_network_border_group
  vpc_enable_dns_support                   = var.vpc_vpc_enable_dns_support
  vpc_enable_network_address_usage_metrics = var.vpc_vpc_enable_network_address_usage_metrics
  vpc_enable_dns_hostnames                 = var.vpc_vpc_enable_dns_hostnames
  vpc_assign_generated_ipv6_cidr_block     = var.vpc_vpc_assign_generated_ipv6_cidr_block
  vpc_tags                                 = var.vpc_vpc_tags
}
/*
module "internet_gateway" {
  source = "../../../elements/aws/internet_gateway"

  //count = var.internet_gateway_is_create ? 1 : 0
  internet_gateway_vpc_id = module.vpc.vpc.id
  internet_gateway_tags   = var.internet_gateway_internet_gateway_tags
}

module "default_route_table" {
  source = "../../../elements/aws/default_route_table"

  default_route_table_id = module.vpc.vpc.default_route_table_id
  default_route_table_route = {
    route_1 = {
      default_route_table_route_cidr_block = "0.0.0.0/0"
      default_route_table_route_gateway_id = module.internet_gateway.internet_gateway.id
    }
  }
  default_route_table_tags = var.default_route_table_default_route_table_tags
}
*/