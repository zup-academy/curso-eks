variable "aws_region" {
  default = "us-east-1"

}

variable "vpc_cidr" {
  type = map(any)
  default = {
    dev = "10.0.0.0/16"
    qa  = "10.100.0.0/16"
  }

}