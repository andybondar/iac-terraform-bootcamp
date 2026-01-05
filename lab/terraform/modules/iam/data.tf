data "aws_iam_policy" "main" {
  count = length(var.iam_policies)
  name  = var.iam_policies[count.index]
}