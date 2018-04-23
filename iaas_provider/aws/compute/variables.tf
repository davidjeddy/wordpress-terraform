# ASG

variable "region" {
  description = "The geographic region the resources will be provisioned into."
  type        = "string"
}

variable "security_group" {
  default     = "arn:aws:acm:us-east-2:530589290119:certificate/beefeccf-b0ff-44ca-925b-d91484023ca2"
  description = "Security groups to assign the ASG to."
  type        = "string"
}

variable "ssl_cert" {
  description = "The ARN to the SSL/TLS certification."
  type        = "string"
}

variable "wp_images" {
  default = {
    us-east-2 = "ami-1942677c"
  }

  description = "The machine image to use to create the compute instance resource."
  type        = "map"
}

# EC2

variable "availability_zone" {
  default = {
    "us-east-2" = "us-east-2a"
  }

  description = "Availablity zone within the region resoures will be provisioned into."
  type        = "map"
}

variable "local_ip" {
  description = "Local IP, used to limit SSH access to the compute instance."
  type        = "string"
}
