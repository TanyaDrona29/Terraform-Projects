provider "aws" {
  region = "us-east-1"
  access_key = "type in the access key for your aws account"
  secret_key = "type in the secret key for your aws account"
}

resource "aws_instance" "ec2-automation" {
  ami = "ami-013f17f36f8b1fefb"
  instance_type = "t2.micro"
  tags = {
    "Name" = "ubuntu"
  }
  
}
