variable "vpc_cidr_block" {
  type        = string
  description = "VPC CIDR block"
  default     = "10.0.0.0/16"
}

variable "subnet" {
  type        = any
  description = "Subnet"
  default = {
    cidr = "10.0.0.0/24"
    name = "iac_bootcamp_subnet"
    az   = "eu-central-1a"
  }
}

variable "eip_enable" {
  type        = bool
  description = "Enable/Disable EIP, True/False"
  default     = false
}