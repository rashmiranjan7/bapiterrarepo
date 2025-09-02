provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-0861f4e788f5069dd" # Ubuntu 22.04 in ap-south-1
  instance_type = "t2.micro"

  tags = {
    Name = "my-test-instance"
  }
}
