variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "ami_id" {
  description = "Name of the existing EC2 key pair"
  default = "ami-04b4f1a9cf54c11d0"
}

variable "name" {
  description = "Name of EC2 Intance"
  default = "CICD"
}
