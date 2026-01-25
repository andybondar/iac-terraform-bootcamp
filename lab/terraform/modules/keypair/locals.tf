locals {
  keypair_tags = merge(
    var.tags,
    {
      Name = "iac_bootcamp_keypair"
    }
  )
}