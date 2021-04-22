provider "aws" {
  region = "us-east-1"
  access_key = "type in the access key of your aws account"
  secret_key = "type in the secret key of your aws account"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  tags = {
    "Name" = "myvpc"
  }
}
resource "aws_subnet" "my-subnet" {
  vpc_id = aws_vpc.main.id
  cidr_block = "10.0.3.0/24"
  tags = {
    "Name" = "mySubnet"
  }
}
