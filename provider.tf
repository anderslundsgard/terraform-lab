provider "aws" {
  # version = ">2.0"
  profile = "default"
  region  = "eu-west-1"
  assume_role {
    role_arn = "arn:aws:iam::${var.account_id}:role/${var.role_name}"
  }
}