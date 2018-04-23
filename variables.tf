variable "local_ip" {
  description = "Local IP, used to limit SSH access to the compute instance."
  type        = "string"
}

variable "region" {
  description = "The geographic region the resources will be provisioned into."
  type        = "string"
}

variable "ami_images" {
  default = {
    us-east-2 = "ami-1942677c"
  }

  description = "The machine image to use to create the compute instance resource."
  type        = "map"
}

variable "availability_zone" {
  default = {
    "us-east-2" = [
      "us-east-2a",
      "us-east-2b",
      "us-east-2c",
    ]
  }

  description = "Availablity zone within the region resoures will be provisioned into."
  type        = "map"
}

variable "ssl_cert" {
  description = "The ARN to the SSL/TLS certification."
  type        = "string"
}
