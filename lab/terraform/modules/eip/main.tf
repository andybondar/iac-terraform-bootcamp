resource "aws_eip" "main" {
  region = var.region
  tags   = local.eip_tags
}

resource "aws_route53_record" "www" {
  zone_id = data.aws_route53_zone.main.zone_id
  name    = "iacbootcamp.${var.domain}"
  type    = "A"
  ttl     = "300"
  records = [aws_eip.main.public_ip]
}