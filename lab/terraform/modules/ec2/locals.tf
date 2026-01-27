locals {
  ec2_tags = merge(
    var.tags,
    {
      Name = "iac_bootcamp_ec2"
    }
  )

  disk_tags = merge(
    var.tags,
    {
      Name = "iac_bootcamp_ec2_disk"
    }
  )
}