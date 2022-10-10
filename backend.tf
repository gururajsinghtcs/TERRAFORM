# # Provider Details
# provider "aws" {
#   region                   = "ap-south-1"
#   shared_credentials_files = ["C:\\Users\\gurur\\.aws\\credentials"]
# }
# optional code for--- aws configure  ---command to avoid every time so put file at this location  C:\\Users\\gurur\\.aws\\credentials  userid secret key


# backend block- s3 Dynamodb
terraform {
    backend "s3"{
    bucket = "guru24bucket-t"
    key = "edwiki/vpc/terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "dpt4_table"
    }
}
