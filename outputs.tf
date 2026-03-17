output "vpc_id" {
  value = module.network.vpc_id
}

output "public_subnet_ids" {
  value = module.network.public_subnet_ids
}

output "internet_gateway_id" {
  value = module.network.internet_gateway_id
}

output "alb_sg_id" {
  value = module.security.alb_sg_id
}

output "ec2_sg_id" {
  value = module.security.ec2_sg_id
}