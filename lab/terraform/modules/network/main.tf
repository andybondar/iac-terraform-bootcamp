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

resource "aws_subnet" "main" {
  vpc_id            = aws_vpc.main.id
  region            = var.region
  cidr_block        = var.subnet["cidr"]
  availability_zone = var.subnet["az"]

  tags = local.subnet_tags
}

resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id
  region = var.region

  tags = local.igw_tags
}