provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "three" {
  count         = 1
  ami           = "ami-0c4a668b99e68bbde"
  instance_type = "t2.micro"

  tags = {
    Name = "test-server"
  }
}
