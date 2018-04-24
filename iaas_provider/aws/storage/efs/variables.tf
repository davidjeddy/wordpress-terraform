variable "subnets" {
  default     = ""
  description = "Subnet the EFS resource will be provisioned in."
  type        = "string"
}

variable "vpc_id" {
  default     = ""
  description = "VPC the EFS resource will be provisioned in."
  type        = "string"
}
