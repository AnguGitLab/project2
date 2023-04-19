#TERRAFORM
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

#AWS PROVIDER
provider "aws" {
  region = "ap-south-1"
}

#INSTANCE
resource "aws_instance" "privateinstance" {

    ami = "ami-077d687accca02dc1"
    instance_type = "t2.micro"
    availability_zone = "ap-south-1a"
    associate_public_ip_address = "false"
    key_name = "ppkKey"

    tags = {
    Name = "privateinstance"
  }