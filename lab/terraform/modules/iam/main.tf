resource "aws_iam_group" "iac" {
  name = var.iam_group_name
}

resource "aws_iam_user" "iac" {
  count = length(var.iam_users)
  name  = var.iam_users[count.index]
}

resource "aws_iam_user_group_membership" "iac" {
  count = length(var.iam_users)
  user  = aws_iam_user.iac[count.index].name

  groups = [aws_iam_group.iac.name]
}

resource "aws_iam_group_policy_attachment" "iac" {
  count      = length(var.iam_policies)
  group      = resource.aws_iam_group.iac.name
  policy_arn = data.aws_iam_policy.main[count.index].arn
}