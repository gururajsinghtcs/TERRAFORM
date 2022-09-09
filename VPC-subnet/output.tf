output "vpc_id" {
   value = aws_vpc.myvpc.id
}

output "subnet_id" {
    value = aws_subnet.subnet1.id
}