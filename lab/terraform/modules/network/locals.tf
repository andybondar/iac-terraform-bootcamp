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
}