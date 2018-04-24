variable "availability_zones" {
  default = ""
  description = ""
  type = "string"
}

variable "aws_region" {
  default = ""
  description = ""
  type = "string"
}

variable "aws_route53_dns_zone_id" {
  default = ""
  description = ""
  type = "string"
}

variable "subnets" {
  default = ""
  description = ""
  type = "string"
}

variable "vpc_id" {
  default = ""
  description = ""
  type = "string"
}

variable "ec2_instance_wp_private_ips" {
  default = []
  description = ""
  type = "list"
}
