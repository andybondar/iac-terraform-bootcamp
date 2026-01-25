resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr_block
  region     = var.region

  tags = local.vpc_tags
}

resource "aws_eip" "main" {
  count  = var.eip_enable ? 1 : 0
  region = var.region
  tags   = local.eip_tags
}