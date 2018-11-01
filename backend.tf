terraform {
  backend "s3" {
    bucket = "terraform-project"
    key    = "project1/mykey"
    region = "us-east-2"
    dynamodb_table = "project1"
  }
}
