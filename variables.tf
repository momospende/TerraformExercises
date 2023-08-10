variable "aws_region" {}
variable "vpc_cidr" {}
variable "subnet_cidr" {}

variable "enable_dns_support" {
  description = "Enable DNS support"
  type        = bool
  default     = true # Set the default value to true
}

variable "enable_dns_hostnames" {
  description = "Enable DNS hostnames"
  type        = bool
  default     = true # Set the default value to true
}

variable "ami_id" {}
variable "instance_type" {}
variable "subnet_id" {}
