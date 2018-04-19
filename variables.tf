variable "local_ip" {
  type = "string"
}

variable "wordpress-images" {
  type = "string"
}

variable "local_ip" {
  type = "string"
}

variable "zones" {
  type = "string"

  default = {
    "us-east-2 = "us-east-2b"
  }
}
