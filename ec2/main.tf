provider "aws" {
  region = var.aws_region
}


resource "aws_security_group" "web_sg" {
  name        = "web_sg"
  description = "Allow HTTP and SSH"
 
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "chan" {
  ami           = var.ami_id
  instance_type = var.instance_type
  
  security_groups = [aws_security_group.web_sg.name]

  tags = {
    Name = "chan-ec2-instance"
  }
}
