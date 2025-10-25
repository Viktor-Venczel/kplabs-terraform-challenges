terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.18.0"
    }
  }
}

provider "aws" {}

data "aws_caller_identity" "myaccount" {}

data "aws_iam_users" "users" {}
