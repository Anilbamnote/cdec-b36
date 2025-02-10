provider "aws" {
  # Configuration options
  region = "us-east-2"
}


resource "aws_instance" "ec2" {
    ami = "ami-088b41ffb0933423f"
    instance_type = "t2.micro"
    key_name = "ohio-faiz-key"
    security_groups = ["default"]


    tags = {
      Name  = "my-aws-instance"
    }
  
}