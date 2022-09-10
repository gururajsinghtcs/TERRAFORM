# # Provider Details
# provider "aws" {
#   region                   = "us-east-1"
#   shared_credentials_files = ["C:\\Users\\gurur\\.aws\\credentials"]
# }


# backend block- s3 Dynamodb
terraform {
    backend "s3"{
    bucket = "guru24bucket-t"
    key = "edwiki/ec2/terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "dpt4_table"
    }
}
