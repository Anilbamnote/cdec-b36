# provider "aws" {
#   # Configuration options
#   region = "us-east-2"
# }


# resource "aws_instance" "ec2" {
#     ami = "ami-088b41ffb0933423f"
#     instance_type = "t2.micro"
#     key_name = "ohio-faiz-key"
#     security_groups = ["default"]
#      count = 2

#     tags = {
#       Name  = "my-aws-instance"
#     }
  
# }



provider "aws" {
  # Configuration options
  region = "us-east-2"
}


resource "aws_instance" "ec2" {
    ami = var.image_id
    instance_type = var.instance_type
    key_name = var.key_name
    security_groups = ["default"]
    #security_groups = var.sg_name
     #count = 2
     #subnet_id = var.subnet_id

    tags = {
      Name  = "my-aws-instance"
    }
  
}
variable "image_id" {
  type    = string
  default = "ami-088b41ffb0933423f"
  # description = "enter_ami_id"
}

variable "instance_type" {
    default = "t2.micro"
  
}

variable "key_name" {
    default = "ohio-faiz-key"
  
}

# variable "sg_name" {
#     type = list
#     default = ["default"]
# }


  
output "public_ip" {
    value = aws_instance.ec2.public_ip
}



# data "aws_subnet" "my_subnet" {
#     id = var.subnet_id
# }

# variable "subnet_id" {
#     default = "subnet-091678d44aa5db41d"
# }

# output "arn_subnet" {
#     value = data.aws_subnet.my_subnet.arn
# }


provider "aws" {
  # Configuration options
  region = "us-east-2"
}

resource "aws_instance" "ec2" {
    ami = var.image_id
    instance_type = var.instance_type
    key_name = var.key_name
    security_groups = ["default"]
     #count = 2
    user_data = <<-EOF
        #!/bin/bash
        yum install httpd -y
        systemctl start httpd
        systemctl enable httpd
    EOF

    tags = {
      Name  = "my-aws-instance"
    }
  
}

variable "image_id" {
    type = string
    default = "ami-088b41ffb0933423f"

  
}

variable "instance_type" {
    default = "t2.micro"
  
}

variable "key_name " {
    default = "ohio-faiz-key"

}
  
output "public_ip" {
    value = aws_instance.ec2.public_ip
}
