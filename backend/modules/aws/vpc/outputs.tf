# vpc module
# outputs.tf
output "vpc_id" {
  value = module.vpc.vpc_id
}
/*
output "internet_gateway" {
  value = module.internet_gateway.internet_gateway
}
*/