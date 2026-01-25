locals {
  tags = merge(
    var.tags,
    {
      Name = "iac_bootcamp_vpc"
    }
  )
}