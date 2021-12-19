module "my_acm_certificate" {
  source = "../../"

  # These are the only required values
  domain  = "something.bucketmeadow.com"
  zone_id = "Z2NJLE48IBR1VH"

  # these are the default values
  # "EMAIL" and "NONE" are valid methods as well
  validation_method = "DNS"
  validate          = true

  tags = {
    "my-key" = "my-value"
  }
}
