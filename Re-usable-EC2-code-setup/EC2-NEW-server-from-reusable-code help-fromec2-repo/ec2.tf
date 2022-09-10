module  "myec2" {
   
      source ="../ec2"
    key_name = "demo-key-21-july"
    instance_type ="t2.micro"
    
}

