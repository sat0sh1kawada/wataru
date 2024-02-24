# internet_gateway module
# main.tf
module "intenet_gateway" {
  source = "../../../elements/aws/internet_gateway"

  internet_gateway_vpc_id = var.internet_gateway_internet_gateway_vpc_id
  internet_gateway_tags   = var.internet_gateway_internet_gateway_tags
}