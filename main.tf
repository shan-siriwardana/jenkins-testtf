terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.37.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "web" {
  ami           = "ami-05d72852800cbf29e"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
