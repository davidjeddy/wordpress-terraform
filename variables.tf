variable "region" {
  type = "string"
}

variable "wordpress-images" {
  type = "map"

  default = {
    us-east-2 = "ami-1942677c"
  }
}

variable "local_ip" {
  type = "string"
}

variable "zones" {
  type = "map"

  default = {
    "us-east-2" = "us-east-2a"
  }
}
