variable "name_prefix" {
  description = "Prefix for resource names"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "my_ip_cidr" {
  description = "My public IP CIDR for SSH"
  type        = string
}

variable "ssh_port" {
  description = "SSH port"
  type        = number
}

variable "http_port" {
  description = "HTTP port"
  type        = number
}

variable "https_port" {
  description = "HTTPS port"
  type        = number
}