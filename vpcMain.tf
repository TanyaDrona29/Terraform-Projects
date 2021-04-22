provider "aws" {
  region = "us-east-1"
  access_key = "AKIA2B6CJ55LZYDDTFG2"
  secret_key = "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"
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