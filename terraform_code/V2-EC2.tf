provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "demo-server" {
  ami = "ami-08a0d1e16fc3f61ea"
  instance_type = "t2.micro"
  key_name = "dpp"
}
 resource "aws_security_group" "demo-sg" {
 name        = "demo-sg"
 description = "SSH Access"
 //vpc_id = aws_vpc.Nam-vpc.id
 ingress {
 description      = "Shh access"
 from_port        = 22
 to_port          = 22
 protocol         = "tcp"
 cidr_blocks      = ["0.0.0.0/0"]
 }
 egress {
 from_port        = 0
 to_port          = 0
 protocol         = "-1"
 cidr_blocks      = ["0.0.0.0/0"]
 ipv6_cidr_blocks = ["::/0"]
 }
 tags = {
 Name = "ssh-port"
 }
 }