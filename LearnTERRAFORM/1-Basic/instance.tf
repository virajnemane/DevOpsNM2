provider "aws" {
  access_key = "ACCESS_KEY_HERE"
  secret_key = "SECRET_KEY_HERE"
  region     = "us-east-2"
}

resource "aws_instance" "test1" {
  ami           = "ami-0e01ce4ee18447327"
  instance_type = "t2.micro"
}

