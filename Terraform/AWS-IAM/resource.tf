resource "aws_iam_user" "terraform_user" {
 name = "terraformpracticeuser"
}

resource "aws_iam_group" "terraform_group" {
  name = "terraform-group"
}

resource "aws_iam_access_key" "terraform_provide_access_keys" {
  user = aws_iam_user.terraform_user.name
}

resource "aws_iam_user_group_membership" "terraform_assign_group_to_user" {
 user =  aws_iam_user.terraform_user.name

 groups = [
  aws_iam_group.terraform_group.name
 ]
}

