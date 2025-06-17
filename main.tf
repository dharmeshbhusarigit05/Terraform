provider "aws" {
 region="ap-south-1"
 }

resource "aws_instance" "one" {
  count = 2
  ami           = "ami-00b7ea845217da02c"
  instance_type = "t2.micro"
  tags = {
    Name = "dev-server"
  }
}
