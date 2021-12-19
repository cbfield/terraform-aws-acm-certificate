output "certificate" {
  description = "The certificate created by this module"
  value       = aws_acm_certificate.cert
}

output "domain" {
  description = "The value provided in var.domain"
  value       = var.domain
}

output "tags" {
  description = "The value provided in var.tags"
  value       = var.tags
}

output "validate" {
  description = "The value provided in var.validate"
  value       = var.validate
}

output "validation_method" {
  description = "The value provided in var.validation_method"
  value       = var.validation_method
}

output "validation_records" {
  description = "The records created to validate the certificate"
  value       = aws_route53_record.validation_record
}

output "zone_id" {
  description = "The value provided in var.zone_id"
  value       = var.zone_id
}
