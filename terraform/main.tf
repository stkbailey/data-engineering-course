terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.20.0"
    }
    postgresql = {
      source  = "cyrilgdn/postgresql"
      version = "1.13.0"
    }
  }
}

provider "aws" {
  region                  = var.region
  shared_credentials_file = var.shared_credentials_file
  profile                 = var.profile_name
  default_tags {
    tags = {
      Name = "tf-test"
      Environment = "development" 
    }
  }
}

module "aws" {
  source = "./aws"
}

module "postgresql" {
  source = "./postgresql"
  # depends_on = [module.aws]

  server   = module.aws.rds.db_instance_address
  port     = module.aws.rds.db_instance_port
  username = module.aws.rds.db_instance_username
  password = module.aws.rds.db_instance_password
}