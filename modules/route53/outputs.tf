output "record_fqdn" {
  value = try(aws_route53_record.alias[0].fqdn, null)
}

output "hosted_zone_id" {
  value = data.aws_route53_zone.this.zone_id
}