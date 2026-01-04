variable "tags" {
  type = any
  description = "Tags"
  default = {
    Project = "IaC_Bootcamp"
  }
}

variable "tfstate_bucket" {
  type = string
  description = "Terraform State bucket name"
  default = "iac-bootcamp-2026-tfstate-bucket"
}

variable "region" {
  type = string
  description = "Default region"
  default = "eu-central-1"
}