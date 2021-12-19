variable "domain" {
  description = "The domain name to assign to the certificate"
  type        = string
}

variable "tags" {
  description = "Tags to assign to the certificate"
  type        = map(string)
  default     = {}
}

variable "validate" {
  description = "Whether or not to validate the certificate"
  type        = bool
  default     = true
}

variable "validation_method" {
  description = "The method to use to validate the certificate"
  type        = string
  default     = "DNS"
}

variable "zone_id" {
  description = "The Route53 hosted zone to create the validation records in"
  type        = string
}
