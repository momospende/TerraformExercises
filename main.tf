provider "aws" {
  region = var.aws_region
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

module "vpc" {
  source = "./modules/networking"

  vpc_cidr                         = var.vpc_cidr
  subnet_cidr                      = var.subnet_cidr
  assign_generated_ipv6_cidr_block = var.assign_generated_ipv6_cidr_block
  enable_classiclink_dns_support   = var.enable_classiclink_dns_support

}




module "ec2" {
  source = "./modules/compute"

  ami_id        = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
}