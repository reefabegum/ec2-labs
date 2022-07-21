terraform {
  backend "s3" {
    bucket         = "talent-academy-reefa-lab"
    key            = "talent-academy/ec2-labs/terraform.tfstates"
    region         = "eu-west-1"
    dynamodb_table = "terraform-lock"
  }
}