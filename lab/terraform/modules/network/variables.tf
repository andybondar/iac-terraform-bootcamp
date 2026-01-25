variable "vpc_cidr_block" {
  type        = string
  description = "VPC CIDR block"
  default     = "10.0.0.0/16"
}

variable "eip_enable" {
  type        = bool
  description = "Enable/Disable EIP, True/False"
  default     = false
}