variable "ec2_instance_type" {
  type        = string
  description = "EC2 instance type"
  default     = "t2.medium"
}

variable "ec2_disk_size" {
  type = number
  description = "EC2 disk size"
  default = 20
}