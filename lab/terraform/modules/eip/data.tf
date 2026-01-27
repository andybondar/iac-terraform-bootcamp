data "aws_route53_zone" "main" {
  name         = "razmova.org."
  private_zone = false
}