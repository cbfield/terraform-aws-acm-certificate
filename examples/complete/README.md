```
module "my_acm_certificate" {
  source = "../../"

  # These are the only required values
  domain  = "something.whatever.com"
  zone_id = "ZZZZZZZZZZZZZZ"

  # these are the default values
  # "EMAIL" and "NONE" are valid methods as well
  validation_method = "DNS"
  validate          = true

  tags = {
    "my-key" = "my-value"
  }
}

```
