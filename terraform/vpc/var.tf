variable "vpc_cidr" {
    default = "10.0.0.0/16"
  
}
variable "sub_pub" {
   default = "10.0.0.0/20"
  
}

variable "image_id" {
    default = "ami-0cbf43fd299e3a464"
  
}
variable "key_name" {
    default = "landon-faiz-key"
  
}
variable "instance_type" {
    default = "t2.micro"
  
}