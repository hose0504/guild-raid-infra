variable "name_prefix" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "subnet_ids" {
  type = list(string)
}

variable "security_group_id" {
  type = string
}

variable "target_port" {
  type = number
}

variable "instance_id" {
  type = string
}

variable "certificate_arn" {
  type = string
}

variable "enable_https" {
  type    = bool
  default = true
}