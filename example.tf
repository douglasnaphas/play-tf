provider "aws" {
  profile = "doug"
  region  = "us-east-1"
}

resource "aws_instance" "example1" {
  ami           = "ami-b374d5a5"
  instance_type = "t2.micro"
}
