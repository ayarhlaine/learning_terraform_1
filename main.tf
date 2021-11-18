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
  profile = "default"
  region  = "ap-southeast-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0fed77069cd5a6d6c"
  instance_type = "t2.micro"

  tags = {
    Name = var.aws_instance_name
  }
}

resource "aws_db_instance" "main" {
  engine = "postgres"
  engine_version = "12.8"
  instance_class = "db.t2.micro"
  name   = var.aws_db_name
  username = var.aws_db_username
  password   = var.aws_db_password
  allocated_storage     = 10
  skip_final_snapshot    = true
}