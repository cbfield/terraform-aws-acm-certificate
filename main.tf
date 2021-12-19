resource "aws_acm_certificate" "cert" {
  domain_name       = var.domain
  validation_method = var.validation_method

  tags = merge(var.tags, {
    "Managed By Terraform" = "true"
  })

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_route53_record" "validation_record" {
  for_each = var.validate && var.validation_method == "DNS" ? {
    for dvo in aws_acm_certificate.cert.domain_validation_options : dvo.domain_name => {
      name   = dvo.resource_record_name
      record = dvo.resource_record_value
      type   = dvo.resource_record_type
    }
  } : {}

  allow_overwrite = true
  name            = each.value.name
  records         = [each.value.record]
  ttl             = 60
  type            = each.value.type
  zone_id         = var.zone_id
}

resource "aws_acm_certificate_validation" "validation" {
  count = var.validate ? 1 : 0

  certificate_arn         = aws_acm_certificate.cert.arn
  validation_record_fqdns = var.validation_method == "DNS" ? [for record in aws_route53_record.validation_record : record.fqdn] : null
}
