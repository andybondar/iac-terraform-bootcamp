data "aws_ami" "ubuntu" {
  most_recent = true
  region      = var.region

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
  }

  owners = ["amazon"]
}

data "aws_subnet" "main" {
  filter {
    name   = "tag:Name"
    values = ["iac_bootcamp_subnet"]
  }
}

data "aws_security_group" "main" {
  name = "iac_bootcamp_sg"
}

data "aws_eip" "main" {
  filter {
    name   = "tag:Name"
    values = ["iac_bootcamp_eip"]
  }
}