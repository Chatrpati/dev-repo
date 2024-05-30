provider "aws" {
  alias  = "usw2"
  region = "us-west-2"
}


resource "aws_instance" "terraformserver" {
    ami = var.myami
    instance_type = var.instance_type
    tags = {
        Name = "terraformserver"
    }
  
}
