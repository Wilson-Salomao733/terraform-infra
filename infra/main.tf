resource "aws_s3_bucket" "bucket" {
    bucket = var.bucket_name
}

resource "aws_instance" "example" {
  ami           = var.ec2_ami
  instance_type = var.ec2_instance_type
  tags = {
    Name = var.ec2_instance_name
  }
}