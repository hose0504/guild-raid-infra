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

output "instance_id" {
  value = module.compute.instance_id
}

output "instance_public_ip" {
  value = module.compute.public_ip
}

output "instance_private_ip" {
  value = module.compute.private_ip
}

output "alb_dns_name" {
  value = module.alb.alb_dns_name
}