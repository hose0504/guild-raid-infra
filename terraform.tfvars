aws_region   = "ap-northeast-2"
project_name = "guild-raid"
owner        = "hose0504"

vpc_cidr = "10.0.0.0/16"

public_subnet_cidrs = [
  "10.0.1.0/24",
  "10.0.2.0/24"
]

availability_zones = [
  "ap-northeast-2a",
  "ap-northeast-2c"
]

domain_name = "wishraid.click"