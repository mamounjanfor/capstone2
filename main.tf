terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  region     = "us-east-2"
 
}

resource "aws_instance" "mamoun_server" {
  ami           = "ami-0661cd3308ec33aaa"
  instance_type = "t2.medium"

  tags = {
    Name = "mamoun"
  }
}
