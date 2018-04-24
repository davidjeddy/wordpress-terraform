# ASG

variable "ami_images" {
  default = {
    us-east-2 = "ami-1942677c"
  }

  description = "The machine image to use to create the compute instance resource."
  type        = "map"
}

variable "region" {
  description = "The geographic region the resources will be provisioned into."
  type        = "string"
}

variable "security_group" {
  default     = ""
  description = "Security groups to assign the ASG to."
  type        = "string"
}

variable "ssl_cert" {
  description = "The ARN to the SSL/TLS certification."
  type        = "string"
}

# EC2

variable "availability_zone" {
  description = "Availablity zone single AZ resoures will be provisioned into."
  type        = "string"
}

variable "availability_zones" {
  description = "Availablity zones multi-AZ resoures will be provisioned into."
  type        = "list"
}

variable "local_ip" {
  description = "Local IP, used to limit SSH access to the compute instance."
  type        = "string"
}
