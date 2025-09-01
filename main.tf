provider "aws" {
region = "ap-south-2"
}

resource "aws_instance" "three" {
  count         = 1
  ami           = "ami-031eac8ecb2726fe0"
  instance_type = "t2.micro"

  tags = {
    Name = "test-server"
  }
}
