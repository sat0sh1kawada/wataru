# eip module
# main.tf
module "eip" {
  source = "../../../elements/aws/eip"

  eip_address                   = var.eip_eip_address
  eip_associate_with_private_ip = var.eip_eip_associate_with_private_ip
  eip_customer_owned_ipv4_pool  = var.eip_eip_customer_owned_ipv4_pool
  eip_domain                    = var.eip_eip_domain
  eip_instance                  = var.eip_eip_instance
  eip_network_border_group      = var.eip_eip_network_border_group
  eip_network_interface         = var.eip_eip_network_interface
  eip_public_ipv4_pool          = var.eip_eip_public_ipv4_pool
  eip_tags                      = var.eip_eip_tags
}
