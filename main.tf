data "aws_caller_identity" "current" {

}

# resource "aws_vpc" "example" {
#   cidr_block = "10.0.0.0/16"
#   tags = {
#     Name = "core-vpc"
#   }
# }

resource "aws_s3_bucket" "some_buckets" {
  for_each = {
    food = "public-read"
    cash = "private"
  }
  bucket = "lundsgard-intro-course-demo-${each.key}"
  acl    = each.value
}

# website::tag::1:: The simplest possible Terraform module: it just outputs "Hello, World!"
output "hello_world" {
  value = "Hello, World!"
}

output "caller_arn" {
  value = data.aws_caller_identity.current.arn
}

