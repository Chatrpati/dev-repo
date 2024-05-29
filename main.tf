provider "aws" {
  region = "ap-south-1"
  alias = "south"
  
}

provider "aws" {
  region = "us-east-1"
  alias  = "east"
  # ... other configuration ...
}

provider "aws" {
  region = "us-west-1"
  alias  = "west"
  # ... other configuration ...
}


resource "aws_instance" "terraformserver" {
    ami = var.myami
    instance_type = var.instance_type
    tags = {
        Name = "terraformserver"
    }
  
}
