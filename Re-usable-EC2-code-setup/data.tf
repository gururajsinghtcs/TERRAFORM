# backend block- s3 Dynamodb
data "terraform_remote_state" "vpc" {
    backend ="s3"
    config={
    bucket = "guru24bucket-t"
    key = "edwiki/vpc/terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "dpt4_table"
    }
}

data "aws_ami" "my-ami" {
  most_recent      = true
  owners           = ["371769606191"]

  filter {
    name   = "name"
    values = ["web-s-*"]
  }
}