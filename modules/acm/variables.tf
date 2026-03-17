variable "domain_name" {
  description = "ACM certificate primary domain"
  type        = string
}

variable "subject_alternative_names" {
  description = "SANs for ACM certificate"
  type        = list(string)
}

variable "hosted_zone_id" {
  description = "Route53 hosted zone ID for DNS validation"
  type        = string
}