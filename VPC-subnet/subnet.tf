resource "aws_subnet" "subnet1" {
  vpc_id     = aws_vpc.myvpc.id
  availability_zone = var.subnet_az
  cidr_block = var.subnet_cidr
  tags = {
    "key" = var.subnet_tag
  }
}