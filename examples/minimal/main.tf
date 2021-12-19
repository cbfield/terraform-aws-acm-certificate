module "my_acm_certificate" {
  source = "../../"

  domain  = "something.whatever.com"
  zone_id = "ZZZZZZZZZZZZZZZ"
}
