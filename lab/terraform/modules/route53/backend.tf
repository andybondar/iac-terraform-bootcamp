terraform {
  backend "s3" {
    bucket = "iac-bootcamp-2026-tfstate-bucket"
    key    = "modules/route53/terraform.tfstate"
    region = "eu-central-1"
  }
}