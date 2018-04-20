variable "region" {
  description = "The geographic region the resources will be provisioned into."
  type = "string"
}

variable "wordpress-images" {
  default = {
    us-east-2 = "ami-1942677c"
  }
  description = "The machine image to use to create the compute instance resource."
  type = "map"
}

variable "local_ip" {
  description = "Local IP, used to limit SSH access to the compute instance."
  type = "string"
}

variable "zones" {
  default = {
    "us-east-2" = "us-east-2a"
  }
  description = "Availablity zone within the region resoures will be provisioned into."
  type = "map"
}
