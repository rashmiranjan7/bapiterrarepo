provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "three" {
  count         = 1
  ami           = "ami-0861f4e788f5069dd"
  instance_type = "t2.micro"

  tags = {
    Name = "test-server"
  }
}
