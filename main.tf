provider "aws" {
 region="ap-south-1"
 }

resource "aws_instance" "one" {
  ami           = "ami-00b7ea845217da02c"
  instance_type = "t2.micro"
  tags = {
    Name = "dev-server"
  }
}
resource "aws_s3_bucket" "two" {
  bucket     = "terraformbucketdharmeshweb"
}


