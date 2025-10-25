
// admin-user-{account-number-of-aws}

resource "aws_iam_user" "adminuser" {
  name = "admin-user-${data.aws_caller_identity.myaccount.account_id}"
  tags = {
    ImportanTag = "managed-via-terraform"
  }
}
