locals {
  aws_keys = [
    for k in aws_iam_access_key.iac : {
      "user"   = k.user
      "id"     = k.id
      "secret" = k.secret
    }
  ]
}