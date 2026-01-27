resource "aws_instance" "main" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.ec2_instance_type
  key_name               = "iac_bootcamp_keypair"
  subnet_id              = data.aws_subnet.main.id
  vpc_security_group_ids = [data.aws_security_group.main.id]

  root_block_device {
    encrypted   = true
    volume_size = var.ec2_disk_size

    tags = local.disk_tags
  }

  tags = local.ec2_tags
}

resource "aws_eip_association" "main" {
  instance_id   = aws_instance.main.id
  allocation_id = data.aws_eip.main.id
}