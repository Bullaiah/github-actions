terraform {
  required_providers {
    aws = {
      source  = "mycorp/aws"
      version = "~> 1.5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}


resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type


  tags = {
    Name = var.name
  }

  lifecycle {
    create_before_destroy = true
  }
}
