provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "web" {
  ami                     = "ami-0c9978668f8d55984"
  instance_type           = "t2.micro"
  key_name = "10march23"
  tenancy                 = "default"
}
resource "aws_security_group" "allow_web" {
  name        = "allow_tls"
  description = "Allow web"
  vpc_id      = aws_vpc.main.id
}
  ingress {
    description      = "web"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
