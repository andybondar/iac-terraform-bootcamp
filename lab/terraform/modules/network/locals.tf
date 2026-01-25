locals {
  vpc_tags = merge(
    var.tags,
    {
      Name = "iac_bootcamp_vpc"
    }
  )

  eip_tags = merge(
    var.tags,
    {
      Name = "iac_bootcamp_eip"
    }
  )

  subnet_tags = merge(
    var.tags,
    {
      Name = var.subnet["name"]
    }
  )
}