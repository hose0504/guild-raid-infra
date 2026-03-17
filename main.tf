module "network" {
  source = "./modules/network"

  name_prefix         = local.name_prefix
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidrs = var.public_subnet_cidrs
  availability_zones  = var.availability_zones
}

module "security" {
  source = "./modules/security"

  name_prefix = local.name_prefix
  vpc_id      = module.network.vpc_id
  my_ip_cidr  = var.my_ip_cidr
  ssh_port    = var.ssh_port
  http_port   = var.http_port
  https_port  = var.https_port
}