terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0913c47048d853921"
  instance_type = "t2.micro"
  key_name = "luana-oregon"

  tags = {
    Name = "PrimeiraInstancia"
  }

}