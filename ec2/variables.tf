variable "aws_region" {
  default = "us-east-1"
}

variable "availability_zone" {
  default = "us-east-1a"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami_id" {
  default = "ami-09c813fb71547fc4f" # Amazon Linux 2 AMI (you can update as needed)
}
