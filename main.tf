provider "aws" {
  region = "ap-south-1"
  
}

resource "aws_instance" "terraformserver" {
    ami = var.myami
    instance_type = var.instance_type
    tags = {
        Name = "terraformserver"
    }
  
}