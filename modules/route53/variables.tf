variable "domain_name" {
  type = string
}

variable "record_name" {
  type = string
}

variable "alb_dns_name" {
  type = string
}

variable "alb_zone_id" {
  type = string
}

variable "create_alias_record" {
  description = "Whether to create ALB alias record"
  type        = bool
  default     = true
}