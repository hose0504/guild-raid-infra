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

module "compute" {
  source = "./modules/compute"

  name_prefix       = local.name_prefix
  ami_id            = var.ami_id
  instance_type     = var.instance_type
  key_name          = var.key_name
  subnet_id         = module.network.public_subnet_ids[0]
  security_group_id = module.security.ec2_sg_id
  user_data_path    = var.user_data_path
}

module "alb" {
  source = "./modules/alb"

  name_prefix      = local.name_prefix
  vpc_id           = module.network.vpc_id
  subnet_ids       = module.network.public_subnet_ids
  security_group_id = module.security.alb_sg_id
  target_port      = var.http_port
  instance_id      = module.compute.instance_id
}