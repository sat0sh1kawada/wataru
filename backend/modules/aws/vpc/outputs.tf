# vpc module
# outputs.tf
output "vpc" {
  value = module.vpc.vpc
}
/*
output "internet_gateway" {
  value = module.internet_gateway.internet_gateway
}
*/