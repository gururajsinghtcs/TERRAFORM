

# backend block- s3 Dynamodb
terraform {
    backend "s3"{
    bucket = "guru24bucket-t"
    key = "edwiki/vpc/terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "dpt4_table"
    }
}
