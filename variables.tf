variable "ami_images" {
  default = {
    us-east-2 = "ami-1942677c"
  }

  description = "The machine image to use to create the compute instance resource."
  type        = "map"
}

variable "availability_zone" {
  description = "AZ to place single AZ resoures into"
  default     = "us-east-2a"
  type        = "string"
}

variable "availability_zones" {
  default = [
    "us-east-2a",
    "us-east-2b",
    "us-east-2c",
  ]

  description = "Availablity zone within the region resoures will be provisioned into."
  type        = "list"
}

variable "local_ip" {
  default     = ""
  description = "Local IP, used to limit SSH access to the compute instance."
  type        = "string"
}

variable "region" {
  default     = "us-east-2"
  description = "The geographic region the resources will be provisioned into."
  type        = "string"
}

variable "ssl_cert" {
  default     = ""
  description = "The ARN to the SSL/TLS certification."
  type        = "string"
}
