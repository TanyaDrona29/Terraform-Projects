provider "aws" {
  region = "us-east-1"
  access_key = "AKIA2B6CJ55LZYDDTFG2"
  secret_key = "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"
}

resource "aws_instance" "ec2-automation" {
  ami = "ami-013f17f36f8b1fefb"
  instance_type = "t2.micro"
  tags = {
    "Name" = "ubuntu"
  }
  
}