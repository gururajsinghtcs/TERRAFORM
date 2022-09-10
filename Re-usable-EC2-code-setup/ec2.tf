resource "aws_instance" "myec2" {
    ami = data.aws_ami.my-ami.id
    key_name = "demo-key-21-july"
    subnet_id = data.terraform_remote_state.vpc.outputs.subnet_id
    instance_type ="t2.micro"
    vpc_security_group_ids =[aws_security_group.mysg.id]
}