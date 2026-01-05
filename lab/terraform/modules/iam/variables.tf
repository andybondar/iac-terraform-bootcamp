variable "iam_group_name" {
  type        = string
  description = "IAM Group Name"
  default     = "IaC"
}

variable "iam_policies" {
  type        = any
  description = "List of IAM policies"
  default     = []
}