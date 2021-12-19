# terraform-aws-acm-certificate

A Terraform module that creates (and optionally validates) and Amazon Certificate Manager (ACM) certificate

# Terraform Docs

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_acm_certificate.cert](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate) | resource |
| [aws_acm_certificate_validation.validation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate_validation) | resource |
| [aws_route53_record.validation_record](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_domain"></a> [domain](#input\_domain) | The domain name to assign to the certificate | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to assign to the certificate | `map(string)` | `{}` | no |
| <a name="input_validate"></a> [validate](#input\_validate) | Whether or not to validate the certificate | `bool` | `true` | no |
| <a name="input_validation_method"></a> [validation\_method](#input\_validation\_method) | The method to use to validate the certificate | `string` | `"DNS"` | no |
| <a name="input_zone_id"></a> [zone\_id](#input\_zone\_id) | The Route53 hosted zone to create the validation records in | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_certificate"></a> [certificate](#output\_certificate) | The certificate created by this module |
| <a name="output_domain"></a> [domain](#output\_domain) | The value provided in var.domain |
| <a name="output_tags"></a> [tags](#output\_tags) | The value provided in var.tags |
| <a name="output_validate"></a> [validate](#output\_validate) | The value provided in var.validate |
| <a name="output_validation_method"></a> [validation\_method](#output\_validation\_method) | The value provided in var.validation\_method |
| <a name="output_validation_records"></a> [validation\_records](#output\_validation\_records) | The records created to validate the certificate |
| <a name="output_zone_id"></a> [zone\_id](#output\_zone\_id) | The value provided in var.zone\_id |
