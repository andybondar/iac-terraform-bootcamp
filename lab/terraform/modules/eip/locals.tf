locals {
  eip_tags = merge(
    var.tags,
    {
      Name = "iac_bootcamp_eip"
    }
  )
}